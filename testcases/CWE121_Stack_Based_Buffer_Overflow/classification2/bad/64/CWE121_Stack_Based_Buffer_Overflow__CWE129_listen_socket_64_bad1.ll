@global_var_b82a8 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3d377:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 -1, ptr %stack_var_-72, align 8
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_3d4b1, label %dec_label_pc_3d3c8

dec_label_pc_3d3c8:                               ; preds = %dec_label_pc_3d377
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_3d4a1.thread4, label %dec_label_pc_3d414

dec_label_pc_3d414:                               ; preds = %dec_label_pc_3d3c8
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_3d4a1.thread4, label %dec_label_pc_3d428

dec_label_pc_3d428:                               ; preds = %dec_label_pc_3d414
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_3d4a1.thread4, label %dec_label_pc_3d445

dec_label_pc_3d445:                               ; preds = %dec_label_pc_3d428
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %dec_label_pc_3d4a7, label %dec_label_pc_3d46c

dec_label_pc_3d46c:                               ; preds = %dec_label_pc_3d445
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  %22 = sext i32 %21 to i64
  store i64 %22, ptr %stack_var_-72, align 8
  br label %dec_label_pc_3d4a7

dec_label_pc_3d4a1.thread4:                       ; preds = %dec_label_pc_3d428, %dec_label_pc_3d414, %dec_label_pc_3d3c8
  %23 = call i32 @close(i32 %1)
  br label %dec_label_pc_3d4b1

dec_label_pc_3d4a7:                               ; preds = %dec_label_pc_3d46c, %dec_label_pc_3d445
  %24 = call i32 @close(i32 %1)
  %25 = call i32 @close(i32 %10)
  br label %dec_label_pc_3d4b1

dec_label_pc_3d4b1:                               ; preds = %dec_label_pc_3d377, %dec_label_pc_3d4a1.thread4, %dec_label_pc_3d4a7
  %26 = bitcast ptr %stack_var_-72 to ptr
  call void @anon1(ptr nonnull %26)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_3d4d2, label %dec_label_pc_3d4cd

dec_label_pc_3d4cd:                               ; preds = %dec_label_pc_3d4b1
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d4d2

dec_label_pc_3d4d2:                               ; preds = %dec_label_pc_3d4cd, %dec_label_pc_3d4b1
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_3d69c:
  %0 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = trunc i64 %1 to i32
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %dec_label_pc_3d72c, label %dec_label_pc_3d6fa

dec_label_pc_3d6fa:                               ; preds = %dec_label_pc_3d69c
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %sext1 = mul i64 %1, 4294967296
  %6 = ashr exact i64 %sext1, 30
  %7 = add i64 %5, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_3d710

dec_label_pc_3d710:                               ; preds = %dec_label_pc_3d6fa, %dec_label_pc_3d710
  %.reload = load i64, ptr %.reg2mem, align 8
  %sext = mul i64 %.reload, 4294967296
  %10 = ashr exact i64 %sext, 30
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %14 = add nuw nsw i64 %.reload, 1
  %15 = and i64 %14, 4294967295
  %16 = trunc i64 %14 to i32
  %17 = icmp slt i32 %16, 10
  store i64 %15, ptr %.reg2mem, align 8
  br i1 %17, label %dec_label_pc_3d710, label %dec_label_pc_3d73b

dec_label_pc_3d72c:                               ; preds = %dec_label_pc_3d69c
  call void @printLine(ptr @global_var_b82a8)
  br label %dec_label_pc_3d73b

dec_label_pc_3d73b:                               ; preds = %dec_label_pc_3d710, %dec_label_pc_3d72c
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %2, %18
  br i1 %19, label %dec_label_pc_3d750, label %dec_label_pc_3d74b

dec_label_pc_3d74b:                               ; preds = %dec_label_pc_3d73b
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d750

dec_label_pc_3d750:                               ; preds = %dec_label_pc_3d74b, %dec_label_pc_3d73b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

