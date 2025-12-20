@global_var_64054 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_18f6e:
  %stack_var_-144.0.reg2mem = alloca ptr, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_64054, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-144.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_18fd2, label %dec_label_pc_18fa3

dec_label_pc_18fa3:                               ; preds = %dec_label_pc_18f6e
  %4 = call ptr @malloc(i32 50)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_18fc8, label %dec_label_pc_18fbe

dec_label_pc_18fbe:                               ; preds = %dec_label_pc_18fa3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_18fc8:                               ; preds = %dec_label_pc_18fa3
  %7 = bitcast ptr %4 to ptr
  store i8 0, ptr %7, align 1
  store ptr %7, ptr %stack_var_-144.0.reg2mem, align 8
  br label %dec_label_pc_18fd2

dec_label_pc_18fd2:                               ; preds = %dec_label_pc_18fc8, %dec_label_pc_18f6e
  %stack_var_-144.0.reload = load ptr, ptr %stack_var_-144.0.reg2mem, align 8
  %8 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %9 = ptrtoint ptr %stack_var_-144.0.reload to i64
  %10 = load i64, ptr %stack_var_-136, align 8
  %11 = bitcast ptr %stack_var_-144.0.reload to ptr
  store i64 %10, ptr %11, align 8
  %12 = add i64 %9, 8
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %9, 16
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %9, 24
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %9, 32
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %9, 40
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %9, 48
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %9, 56
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %9, 64
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %9, 72
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %9, 80
  %31 = inttoptr i64 %30 to ptr
  %32 = add i64 %9, 88
  %33 = inttoptr i64 %32 to ptr
  %34 = add i64 %9, 96
  %35 = inttoptr i64 %34 to ptr
  %36 = add i64 %9, 99
  %37 = inttoptr i64 %36 to ptr
  store i8 0, ptr %37, align 1
  call void @printLine(ptr %stack_var_-144.0.reload)
  call void @free(ptr %11)
  %38 = call i64 @__readfsqword(i64 40)
  %39 = icmp eq i64 %0, %38
  br i1 %39, label %dec_label_pc_19099, label %dec_label_pc_19094

dec_label_pc_19094:                               ; preds = %dec_label_pc_18fd2
  call void @__stack_chk_fail()
  br label %dec_label_pc_19099

dec_label_pc_19099:                               ; preds = %dec_label_pc_19094, %dec_label_pc_18fd2
  ret void
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

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

