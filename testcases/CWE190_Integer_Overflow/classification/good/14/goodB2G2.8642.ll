@global_var_852b0 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_344c8:
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b8074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_3464e, label %dec_label_pc_344f9

dec_label_pc_344f9:                               ; preds = %dec_label_pc_344c8
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %dec_label_pc_3464e, label %dec_label_pc_34528

dec_label_pc_34528:                               ; preds = %dec_label_pc_344f9
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i16 @htons(i16 27015)
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @bind(i32 %4, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %dec_label_pc_34601.thread8, label %dec_label_pc_34574

dec_label_pc_34574:                               ; preds = %dec_label_pc_34528
  %11 = call i32 @listen(i32 %4, i32 5)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %dec_label_pc_34601.thread8, label %dec_label_pc_34588

dec_label_pc_34588:                               ; preds = %dec_label_pc_34574
  %13 = call i32 @accept(i32 %4, ptr null, ptr null)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %dec_label_pc_34601.thread8, label %dec_label_pc_345a5

dec_label_pc_345a5:                               ; preds = %dec_label_pc_34588
  %15 = call i32 @recv(i32 %13, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %17, label %dec_label_pc_34611, label %dec_label_pc_345cc

dec_label_pc_345cc:                               ; preds = %dec_label_pc_345a5
  %18 = ptrtoint ptr %stack_var_-8 to i64
  %19 = sext i32 %15 to i64
  %20 = add i64 %18, -22
  %21 = add i64 %20, %19
  %22 = inttoptr i64 %21 to ptr
  store i8 0, ptr %22, align 1
  %23 = bitcast ptr %stack_var_-30 to ptr
  %24 = call i32 @atoi(ptr nonnull %23)
  store i32 %24, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_34611

dec_label_pc_34601.thread8:                       ; preds = %dec_label_pc_34588, %dec_label_pc_34574, %dec_label_pc_34528
  %25 = call i32 @close(i32 %4)
  br label %dec_label_pc_3464e

dec_label_pc_34611:                               ; preds = %dec_label_pc_345a5, %dec_label_pc_345cc
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %26 = call i32 @close(i32 %4)
  %27 = call i32 @close(i32 %13)
  %28 = load i32, ptr @global_var_b8074, align 4
  %29 = icmp eq i32 %28, 5
  %30 = icmp eq i1 %29, false
  %31 = icmp slt i32 %stack_var_-76.0.ph.reload, 1
  %or.cond3 = or i1 %31, %30
  br i1 %or.cond3, label %dec_label_pc_3464e, label %dec_label_pc_34622

dec_label_pc_34622:                               ; preds = %dec_label_pc_34611
  %32 = icmp sgt i32 %stack_var_-76.0.ph.reload, 1073741822
  br i1 %32, label %dec_label_pc_3463f, label %dec_label_pc_3462b

dec_label_pc_3462b:                               ; preds = %dec_label_pc_34622
  %33 = mul i32 %stack_var_-76.0.ph.reload, 2
  call void @printIntLine(i32 %33)
  br label %dec_label_pc_3464e

dec_label_pc_3463f:                               ; preds = %dec_label_pc_34622
  call void @printLine(ptr @global_var_852b0)
  br label %dec_label_pc_3464e

dec_label_pc_3464e:                               ; preds = %dec_label_pc_344f9, %dec_label_pc_34601.thread8, %dec_label_pc_344c8, %dec_label_pc_3463f, %dec_label_pc_3462b, %dec_label_pc_34611
  %34 = call i64 @__readfsqword(i64 40)
  %35 = icmp eq i64 %0, %34
  br i1 %35, label %dec_label_pc_34663, label %dec_label_pc_3465e

dec_label_pc_3465e:                               ; preds = %dec_label_pc_3464e
  call void @__stack_chk_fail()
  br label %dec_label_pc_34663

dec_label_pc_34663:                               ; preds = %dec_label_pc_3465e, %dec_label_pc_3464e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

