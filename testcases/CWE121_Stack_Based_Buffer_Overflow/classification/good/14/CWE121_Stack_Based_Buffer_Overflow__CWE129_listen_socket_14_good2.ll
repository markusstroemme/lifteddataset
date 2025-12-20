@global_var_b7cf8 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef084 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_36add:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-92.1.reg2mem = alloca i32, align 4
  %stack_var_-92.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load i32, ptr @global_var_ef084, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  store i32 -1, ptr %stack_var_-92.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_36c26, label %dec_label_pc_36b0e

dec_label_pc_36b0e:                               ; preds = %dec_label_pc_36add
  %5 = call i32 @socket(i32 2, i32 1, i32 6)
  %6 = icmp eq i32 %5, -1
  store i32 -1, ptr %stack_var_-92.1.reg2mem, align 4
  br i1 %6, label %dec_label_pc_36c26, label %dec_label_pc_36b3d

dec_label_pc_36b3d:                               ; preds = %dec_label_pc_36b0e
  %7 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %8 = call i16 @htons(i16 27015)
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call i32 @bind(i32 %5, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_36c16.thread8, label %dec_label_pc_36b89

dec_label_pc_36b89:                               ; preds = %dec_label_pc_36b3d
  %12 = call i32 @listen(i32 %5, i32 5)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %dec_label_pc_36c16.thread8, label %dec_label_pc_36b9d

dec_label_pc_36b9d:                               ; preds = %dec_label_pc_36b89
  %14 = call i32 @accept(i32 %5, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_36c16.thread8, label %dec_label_pc_36bba

dec_label_pc_36bba:                               ; preds = %dec_label_pc_36b9d
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  store i32 -1, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br i1 %18, label %dec_label_pc_36c1c, label %dec_label_pc_36be1

dec_label_pc_36be1:                               ; preds = %dec_label_pc_36bba
  %19 = sext i32 %16 to i64
  %20 = add i64 %0, -22
  %21 = add i64 %20, %19
  %22 = inttoptr i64 %21 to ptr
  store i8 0, ptr %22, align 1
  %23 = bitcast ptr %stack_var_-30 to ptr
  %24 = call i32 @atoi(ptr nonnull %23)
  store i32 %24, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br label %dec_label_pc_36c1c

dec_label_pc_36c16.thread8:                       ; preds = %dec_label_pc_36b9d, %dec_label_pc_36b89, %dec_label_pc_36b3d
  %25 = call i32 @close(i32 %5)
  store i32 -1, ptr %stack_var_-92.1.reg2mem, align 4
  br label %dec_label_pc_36c26

dec_label_pc_36c1c:                               ; preds = %dec_label_pc_36be1, %dec_label_pc_36bba
  %stack_var_-92.0.ph.reload = load i32, ptr %stack_var_-92.0.ph.reg2mem, align 4
  %26 = call i32 @close(i32 %5)
  %27 = call i32 @close(i32 %14)
  store i32 %stack_var_-92.0.ph.reload, ptr %stack_var_-92.1.reg2mem, align 4
  br label %dec_label_pc_36c26

dec_label_pc_36c26:                               ; preds = %dec_label_pc_36b0e, %dec_label_pc_36c16.thread8, %dec_label_pc_36c1c, %dec_label_pc_36add
  %28 = load i32, ptr @global_var_ef084, align 4
  %29 = icmp eq i32 %28, 5
  %30 = icmp eq i1 %29, false
  br i1 %30, label %dec_label_pc_36ca8, label %dec_label_pc_36c31

dec_label_pc_36c31:                               ; preds = %dec_label_pc_36c26
  %stack_var_-92.1.reload = load i32, ptr %stack_var_-92.1.reg2mem, align 4
  store i64 0, ptr %stack_var_-72, align 8
  %31 = icmp ugt i32 %stack_var_-92.1.reload, 9
  br i1 %31, label %dec_label_pc_36c97, label %dec_label_pc_36c65

dec_label_pc_36c65:                               ; preds = %dec_label_pc_36c31
  %32 = sext i32 %stack_var_-92.1.reload to i64
  %33 = mul i64 %32, 4
  %34 = add i64 %0, -64
  %35 = add i64 %33, %34
  %36 = inttoptr i64 %35 to ptr
  store i32 1, ptr %36, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_36c7b

dec_label_pc_36c7b:                               ; preds = %dec_label_pc_36c7b, %dec_label_pc_36c65
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %37 = mul i64 %indvars.iv.reload, 4
  %38 = add i64 %37, %34
  %39 = inttoptr i64 %38 to ptr
  %40 = load i32, ptr %39, align 4
  call void @printIntLine(i32 %40)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_36ca8, label %dec_label_pc_36c7b

dec_label_pc_36c97:                               ; preds = %dec_label_pc_36c31
  call void @printLine(ptr @global_var_b7cf8)
  br label %dec_label_pc_36ca8

dec_label_pc_36ca8:                               ; preds = %dec_label_pc_36c7b, %dec_label_pc_36c97, %dec_label_pc_36c26
  %41 = call i64 @__readfsqword(i64 40)
  %42 = icmp eq i64 %1, %41
  br i1 %42, label %dec_label_pc_36cbd, label %dec_label_pc_36cb8

dec_label_pc_36cb8:                               ; preds = %dec_label_pc_36ca8
  call void @__stack_chk_fail()
  br label %dec_label_pc_36cbd

dec_label_pc_36cbd:                               ; preds = %dec_label_pc_36cb8, %dec_label_pc_36ca8
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

