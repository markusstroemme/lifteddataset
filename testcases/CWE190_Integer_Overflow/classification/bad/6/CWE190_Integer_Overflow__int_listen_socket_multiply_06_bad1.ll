@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_31472:
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_315dc, label %dec_label_pc_314d1

dec_label_pc_314d1:                               ; preds = %dec_label_pc_31472
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_315aa.thread7, label %dec_label_pc_3151d

dec_label_pc_3151d:                               ; preds = %dec_label_pc_314d1
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_315aa.thread7, label %dec_label_pc_31531

dec_label_pc_31531:                               ; preds = %dec_label_pc_3151d
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_315aa.thread7, label %dec_label_pc_3154e

dec_label_pc_3154e:                               ; preds = %dec_label_pc_31531
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_315c4, label %dec_label_pc_31575

dec_label_pc_31575:                               ; preds = %dec_label_pc_3154e
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_315c4

dec_label_pc_315aa.thread7:                       ; preds = %dec_label_pc_31531, %dec_label_pc_3151d, %dec_label_pc_314d1
  %22 = call i32 @close(i32 %1)
  br label %dec_label_pc_315dc

dec_label_pc_315c4:                               ; preds = %dec_label_pc_3154e, %dec_label_pc_31575
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  %25 = icmp slt i32 %stack_var_-76.0.ph.reload, 1
  br i1 %25, label %dec_label_pc_315dc, label %dec_label_pc_315ca

dec_label_pc_315ca:                               ; preds = %dec_label_pc_315c4
  %26 = mul i32 %stack_var_-76.0.ph.reload, 2
  call void @printIntLine(i32 %26)
  br label %dec_label_pc_315dc

dec_label_pc_315dc:                               ; preds = %dec_label_pc_31472, %dec_label_pc_315aa.thread7, %dec_label_pc_315ca, %dec_label_pc_315c4
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_315f1, label %dec_label_pc_315ec

dec_label_pc_315ec:                               ; preds = %dec_label_pc_315dc
  call void @__stack_chk_fail()
  br label %dec_label_pc_315f1

dec_label_pc_315f1:                               ; preds = %dec_label_pc_315ec, %dec_label_pc_315dc
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

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

