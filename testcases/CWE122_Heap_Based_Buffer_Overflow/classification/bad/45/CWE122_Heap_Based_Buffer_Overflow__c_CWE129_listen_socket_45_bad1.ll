@CWE122_Heap_Based_Buffer_Overflow__c_CWE129_listen_socket_45_badData = external local_unnamed_addr global i32
@global_var_b8058 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon1() local_unnamed_addr {
dec_label_pc_5165e:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_listen_socket_45_badData, align 4
  %1 = call ptr @malloc(i32 40)
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %4, label %dec_label_pc_5169b, label %dec_label_pc_51688

dec_label_pc_51688:                               ; preds = %dec_label_pc_5165e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5169b:                               ; preds = %dec_label_pc_5165e, %dec_label_pc_5169b
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_516bf, label %dec_label_pc_5169b

dec_label_pc_516bf:                               ; preds = %dec_label_pc_5169b
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %dec_label_pc_51711, label %dec_label_pc_516c5

dec_label_pc_516c5:                               ; preds = %dec_label_pc_516bf
  %9 = sext i32 %0 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, %2
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_516e8

dec_label_pc_516e8:                               ; preds = %dec_label_pc_516e8, %dec_label_pc_516c5
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %2
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_51720, label %dec_label_pc_516e8

dec_label_pc_51711:                               ; preds = %dec_label_pc_516bf
  call void @printLine(ptr @global_var_b8058)
  br label %dec_label_pc_51720

dec_label_pc_51720:                               ; preds = %dec_label_pc_516e8, %dec_label_pc_51711
  call void @free(ptr %1)
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_5172f:
  %stack_var_-72.047.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br i1 %2, label %dec_label_pc_51869, label %dec_label_pc_51780

dec_label_pc_51780:                               ; preds = %dec_label_pc_5172f
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_51859.thread8, label %dec_label_pc_517cc

dec_label_pc_517cc:                               ; preds = %dec_label_pc_51780
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_51859.thread8, label %dec_label_pc_517e0

dec_label_pc_517e0:                               ; preds = %dec_label_pc_517cc
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_51859.thread8, label %dec_label_pc_517fd

dec_label_pc_517fd:                               ; preds = %dec_label_pc_517e0
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_5185f, label %dec_label_pc_51824

dec_label_pc_51824:                               ; preds = %dec_label_pc_517fd
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_5185f

dec_label_pc_51859.thread8:                       ; preds = %dec_label_pc_517e0, %dec_label_pc_517cc, %dec_label_pc_51780
  %22 = call i32 @close(i32 %1)
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_51869

dec_label_pc_5185f:                               ; preds = %dec_label_pc_51824, %dec_label_pc_517fd
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_51869

dec_label_pc_51869:                               ; preds = %dec_label_pc_5172f, %dec_label_pc_51859.thread8, %dec_label_pc_5185f
  %stack_var_-72.047.reload = load i32, ptr %stack_var_-72.047.reg2mem, align 4
  store i32 %stack_var_-72.047.reload, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_listen_socket_45_badData, align 4
  call void @anon1()
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_51891, label %dec_label_pc_5188c

dec_label_pc_5188c:                               ; preds = %dec_label_pc_51869
  call void @__stack_chk_fail()
  br label %dec_label_pc_51891

dec_label_pc_51891:                               ; preds = %dec_label_pc_5188c, %dec_label_pc_51869
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

