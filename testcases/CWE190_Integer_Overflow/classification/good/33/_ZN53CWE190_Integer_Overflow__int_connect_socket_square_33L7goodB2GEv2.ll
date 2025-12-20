@global_var_946b0 = external constant [10 x i8]
@global_var_946c0 = external constant [54 x i8]
@global_var_9543c = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_723dd:
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  store i32 0, ptr %.reg2mem, align 4
  br i1 %cond, label %dec_label_pc_724f3, label %dec_label_pc_7242f

dec_label_pc_7242f:                               ; preds = %dec_label_pc_723dd
  %2 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %3 = call i32 @inet_addr(ptr @global_var_946b0)
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_724e1.thread3, label %dec_label_pc_7248b

dec_label_pc_7248b:                               ; preds = %dec_label_pc_7242f
  %10 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %dec_label_pc_724e1.thread3, label %dec_label_pc_724e1

dec_label_pc_724e1.thread3:                       ; preds = %dec_label_pc_7248b, %dec_label_pc_7242f
  %13 = call i32 @close(i32 %1)
  store i32 0, ptr %.reg2mem, align 4
  br label %dec_label_pc_724f3

dec_label_pc_724e1:                               ; preds = %dec_label_pc_7248b
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %10 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  %21 = call i32 @close(i32 %1)
  %22 = icmp eq i32 %20, -2147483648
  store i32 %20, ptr %.reg2mem, align 4
  br i1 %22, label %dec_label_pc_7251c, label %dec_label_pc_724f3

dec_label_pc_724f3:                               ; preds = %dec_label_pc_723dd, %dec_label_pc_724e1.thread3, %dec_label_pc_724e1
  %.reload = load i32, ptr %.reg2mem, align 4
  %23 = sub i32 0, %.reload
  %24 = icmp slt i32 %23, 0
  %25 = icmp eq i1 %24, false
  %26 = select i1 %25, i32 %23, i32 %.reload
  %27 = icmp sgt i32 %26, 46339
  br i1 %27, label %dec_label_pc_7251c, label %dec_label_pc_72507

dec_label_pc_72507:                               ; preds = %dec_label_pc_724f3
  %28 = mul i32 %.reload, %.reload
  call void @printIntLine(i32 %28)
  br label %dec_label_pc_7252b

dec_label_pc_7251c:                               ; preds = %dec_label_pc_724f3, %dec_label_pc_724e1
  call void @printLine(ptr @global_var_946c0)
  br label %dec_label_pc_7252b

dec_label_pc_7252b:                               ; preds = %dec_label_pc_7251c, %dec_label_pc_72507
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %0, %29
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %30, label %dec_label_pc_72540, label %dec_label_pc_7253b

dec_label_pc_7253b:                               ; preds = %dec_label_pc_7252b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_72540

dec_label_pc_72540:                               ; preds = %dec_label_pc_7253b, %dec_label_pc_7252b
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

