@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_19ebf:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  store i8 0, ptr %2, align 1
  %3 = bitcast ptr %stack_var_-56 to ptr
  %4 = call i64 @anon1(ptr nonnull %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_19f20, label %dec_label_pc_19f1b

dec_label_pc_19f1b:                               ; preds = %dec_label_pc_19ebf
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_19f20

dec_label_pc_19f20:                               ; preds = %dec_label_pc_19f1b, %dec_label_pc_19ebf
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_1a041:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %stack_var_-136 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %6 = load i64, ptr %stack_var_-136, align 8
  %7 = inttoptr i64 %4 to ptr
  store i64 %6, ptr %7, align 8
  %8 = add i64 %4, 8
  %9 = inttoptr i64 %8 to ptr
  %10 = add i64 %4, 16
  %11 = inttoptr i64 %10 to ptr
  %12 = add i64 %4, 24
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %4, 32
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %4, 40
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %4, 48
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %4, 56
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %4, 64
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %4, 72
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %4, 80
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %4, 88
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %4, 96
  %31 = inttoptr i64 %30 to ptr
  %32 = add i64 %4, 99
  %33 = inttoptr i64 %32 to ptr
  store i8 0, ptr %33, align 1
  %34 = inttoptr i64 %4 to ptr
  call void @printLine(ptr %34)
  %35 = icmp eq i64 %4, 0
  br i1 %35, label %dec_label_pc_1a135, label %dec_label_pc_1a126

dec_label_pc_1a126:                               ; preds = %dec_label_pc_1a041
  call void @_ZdaPv(ptr %7, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_1a135

dec_label_pc_1a135:                               ; preds = %dec_label_pc_1a126, %dec_label_pc_1a041
  %36 = call i64 @__readfsqword(i64 40)
  %37 = icmp eq i64 %1, %36
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %37, label %dec_label_pc_1a14a, label %dec_label_pc_1a145

dec_label_pc_1a145:                               ; preds = %dec_label_pc_1a135
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1a14a

dec_label_pc_1a14a:                               ; preds = %dec_label_pc_1a145, %dec_label_pc_1a135
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

