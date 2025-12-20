@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_36b64:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %stack_var_-144 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-144, align 8
  %1 = call i64 @anon1(ptr nonnull %stack_var_-144)
  %2 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %3 = load ptr, ptr %stack_var_-144, align 8
  %4 = ptrtoint ptr %3 to i64
  %5 = load i64, ptr %stack_var_-136, align 8
  %6 = bitcast ptr %3 to ptr
  store i64 %5, ptr %6, align 8
  %7 = add i64 %4, 8
  %8 = inttoptr i64 %7 to ptr
  %9 = add i64 %4, 16
  %10 = inttoptr i64 %9 to ptr
  %11 = add i64 %4, 24
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %4, 32
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %4, 40
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %4, 48
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %4, 56
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %4, 64
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %4, 72
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %4, 80
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %4, 88
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %4, 96
  %30 = inttoptr i64 %29 to ptr
  %31 = load ptr, ptr %stack_var_-144, align 8
  %32 = ptrtoint ptr %31 to i64
  %33 = add i64 %32, 99
  %34 = inttoptr i64 %33 to ptr
  store i8 0, ptr %34, align 1
  %35 = load ptr, ptr %stack_var_-144, align 8
  call void @printLine(ptr %35)
  %36 = load ptr, ptr %stack_var_-144, align 8
  %37 = bitcast ptr %36 to ptr
  call void @free(ptr %37)
  %38 = call i64 @__readfsqword(i64 40)
  %39 = icmp eq i64 %0, %38
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %39, label %dec_label_pc_36c64, label %dec_label_pc_36c5f

dec_label_pc_36c5f:                               ; preds = %dec_label_pc_36b64
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_36c64

dec_label_pc_36c64:                               ; preds = %dec_label_pc_36c5f, %dec_label_pc_36b64
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_36d80:
  %0 = call ptr @malloc(i32 50)
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  store i8 0, ptr inttoptr (i64 50 to ptr), align 2
  ret i64 50
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

