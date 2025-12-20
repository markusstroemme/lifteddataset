@global_var_64028 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_16e53:
  %stack_var_-144.0.reg2mem = alloca ptr, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_64028, align 4
  %2 = icmp eq i32 %1, 0
  store ptr null, ptr %stack_var_-144.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_16eb6, label %dec_label_pc_16e87

dec_label_pc_16e87:                               ; preds = %dec_label_pc_16e53
  %3 = call ptr @malloc(i32 50)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_16eac, label %dec_label_pc_16ea2

dec_label_pc_16ea2:                               ; preds = %dec_label_pc_16e87
  call void @exit(i32 -1)
  unreachable

dec_label_pc_16eac:                               ; preds = %dec_label_pc_16e87
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-144.0.reg2mem, align 8
  br label %dec_label_pc_16eb6

dec_label_pc_16eb6:                               ; preds = %dec_label_pc_16eac, %dec_label_pc_16e53
  %stack_var_-144.0.reload = load ptr, ptr %stack_var_-144.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %8 = ptrtoint ptr %stack_var_-144.0.reload to i64
  %9 = load i64, ptr %stack_var_-136, align 8
  %10 = bitcast ptr %stack_var_-144.0.reload to ptr
  store i64 %9, ptr %10, align 8
  %11 = add i64 %8, 8
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %8, 16
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %8, 24
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %8, 32
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %8, 40
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %8, 48
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %8, 56
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %8, 64
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %8, 72
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %8, 80
  %30 = inttoptr i64 %29 to ptr
  %31 = add i64 %8, 88
  %32 = inttoptr i64 %31 to ptr
  %33 = add i64 %8, 96
  %34 = inttoptr i64 %33 to ptr
  %35 = add i64 %8, 99
  %36 = inttoptr i64 %35 to ptr
  store i8 0, ptr %36, align 1
  call void @printLine(ptr %stack_var_-144.0.reload)
  call void @free(ptr %10)
  %37 = call i64 @__readfsqword(i64 40)
  %38 = icmp eq i64 %0, %37
  br i1 %38, label %dec_label_pc_16f7d, label %dec_label_pc_16f78

dec_label_pc_16f78:                               ; preds = %dec_label_pc_16eb6
  call void @__stack_chk_fail()
  br label %dec_label_pc_16f7d

dec_label_pc_16f7d:                               ; preds = %dec_label_pc_16f78, %dec_label_pc_16eb6
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

