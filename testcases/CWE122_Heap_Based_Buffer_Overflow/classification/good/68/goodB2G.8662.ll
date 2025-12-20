@CWE122_Heap_Based_Buffer_Overflow__c_CWE129_listen_socket_68_goodB2GData = external local_unnamed_addr global i32
@global_var_b8390 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon1() local_unnamed_addr {
dec_label_pc_556ad:
  %stack_var_-72.047.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br i1 %2, label %dec_label_pc_557e7, label %dec_label_pc_556fe

dec_label_pc_556fe:                               ; preds = %dec_label_pc_556ad
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_557d7.thread8, label %dec_label_pc_5574a

dec_label_pc_5574a:                               ; preds = %dec_label_pc_556fe
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_557d7.thread8, label %dec_label_pc_5575e

dec_label_pc_5575e:                               ; preds = %dec_label_pc_5574a
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_557d7.thread8, label %dec_label_pc_5577b

dec_label_pc_5577b:                               ; preds = %dec_label_pc_5575e
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_557dd, label %dec_label_pc_557a2

dec_label_pc_557a2:                               ; preds = %dec_label_pc_5577b
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_557dd

dec_label_pc_557d7.thread8:                       ; preds = %dec_label_pc_5575e, %dec_label_pc_5574a, %dec_label_pc_556fe
  %22 = call i32 @close(i32 %1)
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_557e7

dec_label_pc_557dd:                               ; preds = %dec_label_pc_557a2, %dec_label_pc_5577b
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_557e7

dec_label_pc_557e7:                               ; preds = %dec_label_pc_556ad, %dec_label_pc_557d7.thread8, %dec_label_pc_557dd
  %stack_var_-72.047.reload = load i32, ptr %stack_var_-72.047.reg2mem, align 4
  store i32 %stack_var_-72.047.reload, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_listen_socket_68_goodB2GData, align 4
  call void @anon0()
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_5580f, label %dec_label_pc_5580a

dec_label_pc_5580a:                               ; preds = %dec_label_pc_557e7
  call void @__stack_chk_fail()
  br label %dec_label_pc_5580f

dec_label_pc_5580f:                               ; preds = %dec_label_pc_5580a, %dec_label_pc_557e7
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_559d2:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_listen_socket_68_goodB2GData, align 4
  %1 = call ptr @malloc(i32 40)
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br i1 %4, label %dec_label_pc_55a0f, label %dec_label_pc_559fc

dec_label_pc_559fc:                               ; preds = %dec_label_pc_559d2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_55a0f:                               ; preds = %dec_label_pc_559d2, %dec_label_pc_55a0f
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %5 = mul i64 %indvars.iv6.reload, 4
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_55a33, label %dec_label_pc_55a0f

dec_label_pc_55a33:                               ; preds = %dec_label_pc_55a0f
  %8 = icmp ugt i32 %0, 9
  br i1 %8, label %dec_label_pc_55a8b, label %dec_label_pc_55a3f

dec_label_pc_55a3f:                               ; preds = %dec_label_pc_55a33
  %9 = sext i32 %0 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, %2
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_55a62

dec_label_pc_55a62:                               ; preds = %dec_label_pc_55a62, %dec_label_pc_55a3f
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %2
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_55a9a, label %dec_label_pc_55a62

dec_label_pc_55a8b:                               ; preds = %dec_label_pc_55a33
  call void @printLine(ptr @global_var_b8390)
  br label %dec_label_pc_55a9a

dec_label_pc_55a9a:                               ; preds = %dec_label_pc_55a62, %dec_label_pc_55a8b
  call void @free(ptr %1)
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

