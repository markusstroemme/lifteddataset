@global_var_30136 = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_14e40:
  %storemerge3.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1624 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_14e97

dec_label_pc_14e97:                               ; preds = %dec_label_pc_14e97, %dec_label_pc_14e40
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %3 = mul i64 %storemerge3.reload, 8
  %4 = add i64 %3, %0
  %5 = add i64 %4, -816
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 8
  %7 = add i64 %4, -812
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_14ecd, label %dec_label_pc_14e97

dec_label_pc_14ecd:                               ; preds = %dec_label_pc_14e97
  %storemerge2 = bitcast ptr %stack_var_-1624 to ptr
  %10 = call ptr @memcpy(ptr nonnull %stack_var_-1624, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr nonnull %storemerge2)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_14f0f, label %dec_label_pc_14f0a

dec_label_pc_14f0a:                               ; preds = %dec_label_pc_14ecd
  call void @__stack_chk_fail()
  br label %dec_label_pc_14f0f

dec_label_pc_14f0f:                               ; preds = %dec_label_pc_14f0a, %dec_label_pc_14ecd
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_27845:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

