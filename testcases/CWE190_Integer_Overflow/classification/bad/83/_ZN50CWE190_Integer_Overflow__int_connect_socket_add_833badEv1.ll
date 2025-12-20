@global_var_93efd = external constant [10 x i8]
@global_var_9543c = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_6ea1c:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %1, align 4
  %2 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %2, -1
  br i1 %cond, label %dec_label_pc_6eb24, label %dec_label_pc_6ea6f

dec_label_pc_6ea6f:                               ; preds = %dec_label_pc_6ea1c
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_93efd)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %2, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_6eb1a, label %dec_label_pc_6eacb

dec_label_pc_6eacb:                               ; preds = %dec_label_pc_6ea6f
  %11 = call i32 @recv(i32 %2, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %dec_label_pc_6eb1a, label %dec_label_pc_6eaf2

dec_label_pc_6eaf2:                               ; preds = %dec_label_pc_6eacb
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %1, align 4
  br label %dec_label_pc_6eb1a

dec_label_pc_6eb1a:                               ; preds = %dec_label_pc_6eacb, %dec_label_pc_6eaf2, %dec_label_pc_6ea6f
  %21 = call i32 @close(i32 %2)
  br label %dec_label_pc_6eb24

dec_label_pc_6eb24:                               ; preds = %dec_label_pc_6ea1c, %dec_label_pc_6eb1a
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_6eb39, label %dec_label_pc_6eb34

dec_label_pc_6eb34:                               ; preds = %dec_label_pc_6eb24
  call void @__stack_chk_fail()
  br label %dec_label_pc_6eb39

dec_label_pc_6eb39:                               ; preds = %dec_label_pc_6eb34, %dec_label_pc_6eb24
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_6eb3c:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = add i32 %2, 1
  call void @printIntLine(i32 %3)
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_6ed1d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-24, i32 0)
  call void @anon1(ptr nonnull %stack_var_-24)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6ed70, label %dec_label_pc_6ed6b

dec_label_pc_6ed6b:                               ; preds = %dec_label_pc_6ed1d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6ed70

dec_label_pc_6ed70:                               ; preds = %dec_label_pc_6ed6b, %dec_label_pc_6ed1d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

