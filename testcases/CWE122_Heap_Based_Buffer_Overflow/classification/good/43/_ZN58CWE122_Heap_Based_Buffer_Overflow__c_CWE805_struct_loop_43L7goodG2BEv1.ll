@global_var_7c84a = external constant [10 x i8]
@0 = external global i32
@global_var_320 = external constant i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_5b442:
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 ptrtoint (ptr @global_var_320 to i64)
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_5b47f:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %stack_var_-848 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-848, align 8
  %2 = bitcast ptr %stack_var_-848 to ptr
  %3 = call i64 @anon0(ptr nonnull %2)
  %4 = add i64 %0, -816
  %5 = add i64 %0, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_5b4c4

dec_label_pc_5b4c4:                               ; preds = %dec_label_pc_5b4c4, %dec_label_pc_5b47f
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %6 = mul i64 %storemerge24.reload, 8
  %7 = add i64 %6, %4
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 8
  %9 = add i64 %5, %6
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_5b536.preheader, label %dec_label_pc_5b4c4

dec_label_pc_5b536.preheader:                     ; preds = %dec_label_pc_5b4c4
  %12 = load ptr, ptr %stack_var_-848, align 8
  store ptr %12, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_5b507

dec_label_pc_5b507:                               ; preds = %dec_label_pc_5b507, %dec_label_pc_5b536.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %13 = ptrtoint ptr %.reload to i64
  %14 = mul i64 %storemerge3.reload, 8
  %15 = add i64 %14, %13
  %16 = add i64 %14, %4
  %17 = inttoptr i64 %16 to ptr
  %18 = load i64, ptr %17, align 8
  %19 = inttoptr i64 %15 to ptr
  store i64 %18, ptr %19, align 8
  %20 = add nuw nsw i64 %storemerge3.reload, 1
  %21 = load ptr, ptr %stack_var_-848, align 8
  %exitcond = icmp eq i64 %20, 100
  store ptr %21, ptr %.reg2mem, align 8
  store i64 %20, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5b540, label %dec_label_pc_5b507

dec_label_pc_5b540:                               ; preds = %dec_label_pc_5b507
  call void @printStructLine(ptr %21)
  %22 = load ptr, ptr %stack_var_-848, align 8
  %23 = bitcast ptr %22 to ptr
  call void @free(ptr %23)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %1, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_5b573, label %dec_label_pc_5b56e

dec_label_pc_5b56e:                               ; preds = %dec_label_pc_5b540
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5b573

dec_label_pc_5b573:                               ; preds = %dec_label_pc_5b56e, %dec_label_pc_5b540
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

