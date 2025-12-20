@global_var_30136 = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_14afc:
  %0 = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1224 = alloca i64, align 8
  %1 = load ptr, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = call i32 @globalReturnsTrue()
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_14b43

dec_label_pc_14b43:                               ; preds = %dec_label_pc_14b43, %dec_label_pc_14afc
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 8
  %6 = add i64 %5, %2
  %7 = add i64 %6, -816
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 8
  %9 = add i64 %6, -812
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_14b79, label %dec_label_pc_14b43

dec_label_pc_14b79:                               ; preds = %dec_label_pc_14b43
  %12 = bitcast ptr %stack_var_-1224 to ptr
  %13 = icmp eq i32 %4, 0
  %spec.select = select i1 %13, ptr %1, ptr %12
  %14 = bitcast ptr %spec.select to ptr
  %15 = call ptr @memcpy(ptr %14, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %spec.select)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %3, %16
  br i1 %17, label %dec_label_pc_14bbb, label %dec_label_pc_14bb6

dec_label_pc_14bb6:                               ; preds = %dec_label_pc_14b79
  call void @__stack_chk_fail()
  br label %dec_label_pc_14bbb

dec_label_pc_14bbb:                               ; preds = %dec_label_pc_14bb6, %dec_label_pc_14b79
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_275a6:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_30136, i64 %7, i64 %6)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_27827:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

