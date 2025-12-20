@global_var_7c84a = external constant [10 x i8]
@0 = external global i32
@global_var_320 = external constant i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_61de4:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-840 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-840, align 8
  %2 = bitcast ptr %stack_var_-840 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_61e29

dec_label_pc_61e29:                               ; preds = %dec_label_pc_61e29, %dec_label_pc_61de4
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %4 = mul i64 %storemerge2.reload, 8
  %5 = add i64 %4, %0
  %6 = add i64 %5, -816
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 8
  %8 = add i64 %5, -812
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_61e5f, label %dec_label_pc_61e29

dec_label_pc_61e5f:                               ; preds = %dec_label_pc_61e29
  %11 = load ptr, ptr %stack_var_-840, align 8
  %12 = bitcast ptr %11 to ptr
  %13 = call ptr @memcpy(ptr %12, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %14 = load ptr, ptr %stack_var_-840, align 8
  call void @printStructLine(ptr %14)
  %15 = load ptr, ptr %stack_var_-840, align 8
  %16 = bitcast ptr %15 to ptr
  call void @free(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_61eb0, label %dec_label_pc_61eab

dec_label_pc_61eab:                               ; preds = %dec_label_pc_61e5f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_61eb0

dec_label_pc_61eb0:                               ; preds = %dec_label_pc_61eab, %dec_label_pc_61e5f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_61eff:
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 ptrtoint (ptr @global_var_320 to i64)
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_65a35:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_7c84a, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

