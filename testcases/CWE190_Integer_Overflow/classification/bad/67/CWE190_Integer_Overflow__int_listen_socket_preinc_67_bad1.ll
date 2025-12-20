@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_447da:
  %stack_var_-72.036.reg2mem = alloca i64, align 8
  %stack_var_-72.0.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i64 0, ptr %stack_var_-72.036.reg2mem, align 8
  br i1 %2, label %dec_label_pc_44914, label %dec_label_pc_4482b

dec_label_pc_4482b:                               ; preds = %dec_label_pc_447da
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_44904.thread7, label %dec_label_pc_44877

dec_label_pc_44877:                               ; preds = %dec_label_pc_4482b
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_44904.thread7, label %dec_label_pc_4488b

dec_label_pc_4488b:                               ; preds = %dec_label_pc_44877
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_44904.thread7, label %dec_label_pc_448a8

dec_label_pc_448a8:                               ; preds = %dec_label_pc_4488b
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i64 0, ptr %stack_var_-72.0.ph.reg2mem, align 8
  br i1 %14, label %dec_label_pc_4490a, label %dec_label_pc_448cf

dec_label_pc_448cf:                               ; preds = %dec_label_pc_448a8
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  %phitmp = zext i32 %21 to i64
  store i64 %phitmp, ptr %stack_var_-72.0.ph.reg2mem, align 8
  br label %dec_label_pc_4490a

dec_label_pc_44904.thread7:                       ; preds = %dec_label_pc_4488b, %dec_label_pc_44877, %dec_label_pc_4482b
  %22 = call i32 @close(i32 %1)
  store i64 0, ptr %stack_var_-72.036.reg2mem, align 8
  br label %dec_label_pc_44914

dec_label_pc_4490a:                               ; preds = %dec_label_pc_448cf, %dec_label_pc_448a8
  %stack_var_-72.0.ph.reload = load i64, ptr %stack_var_-72.0.ph.reg2mem, align 8
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i64 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.036.reg2mem, align 8
  br label %dec_label_pc_44914

dec_label_pc_44914:                               ; preds = %dec_label_pc_447da, %dec_label_pc_44904.thread7, %dec_label_pc_4490a
  %stack_var_-72.036.reload = load i64, ptr %stack_var_-72.036.reg2mem, align 8
  call void @anon1(i64 %stack_var_-72.036.reload)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_44939, label %dec_label_pc_44934

dec_label_pc_44934:                               ; preds = %dec_label_pc_44914
  call void @__stack_chk_fail()
  br label %dec_label_pc_44939

dec_label_pc_44939:                               ; preds = %dec_label_pc_44934, %dec_label_pc_44914
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_44ae8:
  %0 = trunc i64 %myStruct to i32
  %1 = add i32 %0, 1
  call void @printIntLine(i32 %1)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

