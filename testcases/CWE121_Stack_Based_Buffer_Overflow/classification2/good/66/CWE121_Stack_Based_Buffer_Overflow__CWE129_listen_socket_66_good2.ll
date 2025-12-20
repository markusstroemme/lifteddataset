@global_var_b8358 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_3df8b:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x i32], align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = insertvalue [5 x i32] undef, i32 %1, 0
  store [5 x i32] %2, ptr %dataArray_-64, align 4
  %3 = getelementptr inbounds [5 x i32], ptr %dataArray_-64, i64 0, i64 0
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %dec_label_pc_3e0c5, label %dec_label_pc_3dfdc

dec_label_pc_3dfdc:                               ; preds = %dec_label_pc_3df8b
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i16 @htons(i16 27015)
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @bind(i32 %4, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %dec_label_pc_3e0b5.thread8, label %dec_label_pc_3e028

dec_label_pc_3e028:                               ; preds = %dec_label_pc_3dfdc
  %11 = call i32 @listen(i32 %4, i32 5)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %dec_label_pc_3e0b5.thread8, label %dec_label_pc_3e03c

dec_label_pc_3e03c:                               ; preds = %dec_label_pc_3e028
  %13 = call i32 @accept(i32 %4, ptr null, ptr null)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %dec_label_pc_3e0b5.thread8, label %dec_label_pc_3e059

dec_label_pc_3e059:                               ; preds = %dec_label_pc_3e03c
  %15 = call i32 @recv(i32 %13, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %dec_label_pc_3e0b5, label %dec_label_pc_3e0a5

dec_label_pc_3e0a5:                               ; preds = %dec_label_pc_3e059
  %18 = ptrtoint ptr %stack_var_-8 to i64
  %19 = sext i32 %15 to i64
  %20 = add i64 %18, -22
  %21 = add i64 %20, %19
  %22 = inttoptr i64 %21 to ptr
  store i8 0, ptr %22, align 1
  %23 = bitcast ptr %stack_var_-30 to ptr
  %24 = call i32 @atoi(ptr nonnull %23)
  %.pr.pre = load i32, ptr %3, align 4
  %25 = icmp eq i32 %.pr.pre, -1
  br i1 %25, label %dec_label_pc_3e0bb, label %dec_label_pc_3e0b5.thread7

dec_label_pc_3e0b5.thread7:                       ; preds = %dec_label_pc_3e0a5
  %26 = call i32 @close(i32 %.pr.pre)
  br label %dec_label_pc_3e0bb

dec_label_pc_3e0b5.thread8:                       ; preds = %dec_label_pc_3dfdc, %dec_label_pc_3e028, %dec_label_pc_3e03c
  %27 = call i32 @close(i32 %4)
  br label %dec_label_pc_3e0c5

dec_label_pc_3e0b5:                               ; preds = %dec_label_pc_3e059
  %28 = call i32 @close(i32 %4)
  br label %dec_label_pc_3e0bb

dec_label_pc_3e0bb:                               ; preds = %dec_label_pc_3e0a5, %dec_label_pc_3e0b5, %dec_label_pc_3e0b5.thread7
  %29 = call i32 @close(i32 %13)
  br label %dec_label_pc_3e0c5

dec_label_pc_3e0c5:                               ; preds = %dec_label_pc_3e0b5.thread8, %dec_label_pc_3df8b, %dec_label_pc_3e0bb
  %30 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %30)
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %0, %31
  br i1 %32, label %dec_label_pc_3e0ec, label %dec_label_pc_3e0e7

dec_label_pc_3e0e7:                               ; preds = %dec_label_pc_3e0c5
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e0ec

dec_label_pc_3e0ec:                               ; preds = %dec_label_pc_3e0e7, %dec_label_pc_3e0c5
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_3e26b:
  %indvars.iv.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %dataArray to i64
  %stack_var_-8 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 9
  br i1 %5, label %dec_label_pc_3e2fa, label %dec_label_pc_3e2c8

dec_label_pc_3e2c8:                               ; preds = %dec_label_pc_3e26b
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %7 = sext i32 %4 to i64
  %8 = mul i64 %7, 4
  %9 = add i64 %6, -48
  %10 = add i64 %8, %9
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3e2de

dec_label_pc_3e2de:                               ; preds = %dec_label_pc_3e2de, %dec_label_pc_3e2c8
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %9
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3e309, label %dec_label_pc_3e2de

dec_label_pc_3e2fa:                               ; preds = %dec_label_pc_3e26b
  call void @printLine(ptr @global_var_b8358)
  br label %dec_label_pc_3e309

dec_label_pc_3e309:                               ; preds = %dec_label_pc_3e2de, %dec_label_pc_3e2fa
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_3e31e, label %dec_label_pc_3e319

dec_label_pc_3e319:                               ; preds = %dec_label_pc_3e309
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e31e

dec_label_pc_3e31e:                               ; preds = %dec_label_pc_3e319, %dec_label_pc_3e309
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

