@global_var_8c32c = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_65d20:
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem6 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 0, ptr %.reg2mem6, align 4
  br i1 %2, label %dec_label_pc_65e6c, label %dec_label_pc_65d79

dec_label_pc_65d79:                               ; preds = %dec_label_pc_65d20
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_65e5c.thread5, label %dec_label_pc_65dca

dec_label_pc_65dca:                               ; preds = %dec_label_pc_65d79
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_65e5c.thread5, label %dec_label_pc_65de3

dec_label_pc_65de3:                               ; preds = %dec_label_pc_65dca
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_65e5c.thread5, label %dec_label_pc_65e00

dec_label_pc_65e00:                               ; preds = %dec_label_pc_65de3
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  store i32 0, ptr %.reg2mem, align 4
  br i1 %18, label %dec_label_pc_65e62, label %dec_label_pc_65e27

dec_label_pc_65e27:                               ; preds = %dec_label_pc_65e00
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -22
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-30 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  store i32 %25, ptr %.reg2mem, align 4
  br label %dec_label_pc_65e62

dec_label_pc_65e5c.thread5:                       ; preds = %dec_label_pc_65de3, %dec_label_pc_65dca, %dec_label_pc_65d79
  %26 = call i32 @close(i32 %1)
  store i32 0, ptr %.reg2mem6, align 4
  br label %dec_label_pc_65e6c

dec_label_pc_65e62:                               ; preds = %dec_label_pc_65e27, %dec_label_pc_65e00
  %.reload = load i32, ptr %.reg2mem, align 4
  %27 = call i32 @close(i32 %1)
  %28 = call i32 @close(i32 %14)
  store i32 %.reload, ptr %.reg2mem6, align 4
  br label %dec_label_pc_65e6c

dec_label_pc_65e6c:                               ; preds = %dec_label_pc_65d20, %dec_label_pc_65e5c.thread5, %dec_label_pc_65e62
  %.reload7 = load i32, ptr %.reg2mem6, align 4
  %29 = mul i32 %.reload7, %.reload7
  call void @printIntLine(i32 %29)
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %0, %30
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %31, label %dec_label_pc_65e9d, label %dec_label_pc_65e98

dec_label_pc_65e98:                               ; preds = %dec_label_pc_65e6c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_65e9d

dec_label_pc_65e9d:                               ; preds = %dec_label_pc_65e98, %dec_label_pc_65e6c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

