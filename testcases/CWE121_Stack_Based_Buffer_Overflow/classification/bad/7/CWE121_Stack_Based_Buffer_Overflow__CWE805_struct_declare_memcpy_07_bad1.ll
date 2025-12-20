@global_var_30136 = external constant [10 x i8]
@global_var_320 = external constant i32
@global_var_3d024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_14133:
  %0 = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1224 = alloca i64, align 8
  %1 = load ptr, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = load i32, ptr @global_var_3d024, align 4
  %5 = icmp eq i32 %4, 5
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_14177

dec_label_pc_14177:                               ; preds = %dec_label_pc_14177, %dec_label_pc_14133
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %6 = mul i64 %storemerge2.reload, 8
  %7 = add i64 %6, %2
  %8 = add i64 %7, -816
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 8
  %10 = add i64 %7, -812
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_141ad, label %dec_label_pc_14177

dec_label_pc_141ad:                               ; preds = %dec_label_pc_14177
  %13 = bitcast ptr %stack_var_-1224 to ptr
  %14 = icmp eq i1 %5, false
  %spec.select = select i1 %14, ptr %1, ptr %13
  %15 = bitcast ptr %spec.select to ptr
  %16 = call ptr @memcpy(ptr %15, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %spec.select)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %3, %17
  br i1 %18, label %dec_label_pc_141ef, label %dec_label_pc_141ea

dec_label_pc_141ea:                               ; preds = %dec_label_pc_141ad
  call void @__stack_chk_fail()
  br label %dec_label_pc_141ef

dec_label_pc_141ef:                               ; preds = %dec_label_pc_141ea, %dec_label_pc_141ad
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

