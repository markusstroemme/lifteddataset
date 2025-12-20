@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_badData = external local_unnamed_addr global i32
@global_var_b83c8 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3e832:
  %stack_var_-72.047.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br i1 %2, label %dec_label_pc_3e96c, label %dec_label_pc_3e883

dec_label_pc_3e883:                               ; preds = %dec_label_pc_3e832
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_3e95c.thread8, label %dec_label_pc_3e8cf

dec_label_pc_3e8cf:                               ; preds = %dec_label_pc_3e883
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_3e95c.thread8, label %dec_label_pc_3e8e3

dec_label_pc_3e8e3:                               ; preds = %dec_label_pc_3e8cf
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_3e95c.thread8, label %dec_label_pc_3e900

dec_label_pc_3e900:                               ; preds = %dec_label_pc_3e8e3
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_3e962, label %dec_label_pc_3e927

dec_label_pc_3e927:                               ; preds = %dec_label_pc_3e900
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_3e962

dec_label_pc_3e95c.thread8:                       ; preds = %dec_label_pc_3e8e3, %dec_label_pc_3e8cf, %dec_label_pc_3e883
  %22 = call i32 @close(i32 %1)
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_3e96c

dec_label_pc_3e962:                               ; preds = %dec_label_pc_3e927, %dec_label_pc_3e900
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_3e96c

dec_label_pc_3e96c:                               ; preds = %dec_label_pc_3e832, %dec_label_pc_3e95c.thread8, %dec_label_pc_3e962
  %stack_var_-72.047.reload = load i32, ptr %stack_var_-72.047.reg2mem, align 4
  store i32 %stack_var_-72.047.reload, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_badData, align 4
  call void @anon1()
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_3e994, label %dec_label_pc_3e98f

dec_label_pc_3e98f:                               ; preds = %dec_label_pc_3e96c
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e994

dec_label_pc_3e994:                               ; preds = %dec_label_pc_3e98f, %dec_label_pc_3e96c
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_3eb49:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_badData, align 4
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %dec_label_pc_3ebcd, label %dec_label_pc_3eb9b

dec_label_pc_3eb9b:                               ; preds = %dec_label_pc_3eb49
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %3, -48
  %7 = add i64 %5, %6
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3ebb1

dec_label_pc_3ebb1:                               ; preds = %dec_label_pc_3ebb1, %dec_label_pc_3eb9b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %9 = mul i64 %indvars.iv.reload, 4
  %10 = add i64 %9, %6
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3ebdc, label %dec_label_pc_3ebb1

dec_label_pc_3ebcd:                               ; preds = %dec_label_pc_3eb49
  call void @printLine(ptr @global_var_b83c8)
  br label %dec_label_pc_3ebdc

dec_label_pc_3ebdc:                               ; preds = %dec_label_pc_3ebb1, %dec_label_pc_3ebcd
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_3ebf1, label %dec_label_pc_3ebec

dec_label_pc_3ebec:                               ; preds = %dec_label_pc_3ebdc
  call void @__stack_chk_fail()
  br label %dec_label_pc_3ebf1

dec_label_pc_3ebf1:                               ; preds = %dec_label_pc_3ebec, %dec_label_pc_3ebdc
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

