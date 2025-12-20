@global_var_87458 = external constant [21 x i8]
@global_var_87470 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3ed89:
  %stack_var_-76.1.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-76.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_bc0a4, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_3eed2, label %dec_label_pc_3edba

dec_label_pc_3edba:                               ; preds = %dec_label_pc_3ed89
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 0, ptr %stack_var_-76.1.ph.reg2mem, align 4
  br i1 %5, label %dec_label_pc_3eed2thread-pre-split, label %dec_label_pc_3ede9

dec_label_pc_3ede9:                               ; preds = %dec_label_pc_3edba
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i16 @htons(i16 27015)
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @bind(i32 %4, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %dec_label_pc_3eec2.thread6, label %dec_label_pc_3ee35

dec_label_pc_3ee35:                               ; preds = %dec_label_pc_3ede9
  %11 = call i32 @listen(i32 %4, i32 5)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %dec_label_pc_3eec2.thread6, label %dec_label_pc_3ee49

dec_label_pc_3ee49:                               ; preds = %dec_label_pc_3ee35
  %13 = call i32 @accept(i32 %4, ptr null, ptr null)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %dec_label_pc_3eec2.thread6, label %dec_label_pc_3ee66

dec_label_pc_3ee66:                               ; preds = %dec_label_pc_3ee49
  %15 = call i32 @recv(i32 %13, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %17, label %dec_label_pc_3eec8, label %dec_label_pc_3ee8d

dec_label_pc_3ee8d:                               ; preds = %dec_label_pc_3ee66
  %18 = ptrtoint ptr %stack_var_-8 to i64
  %19 = sext i32 %15 to i64
  %20 = add i64 %18, -22
  %21 = add i64 %20, %19
  %22 = inttoptr i64 %21 to ptr
  store i8 0, ptr %22, align 1
  %23 = bitcast ptr %stack_var_-30 to ptr
  %24 = call i32 @atoi(ptr nonnull %23)
  store i32 %24, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_3eec8

dec_label_pc_3eec2.thread6:                       ; preds = %dec_label_pc_3ee49, %dec_label_pc_3ee35, %dec_label_pc_3ede9
  %25 = call i32 @close(i32 %4)
  store i32 0, ptr %stack_var_-76.1.ph.reg2mem, align 4
  br label %dec_label_pc_3eed2thread-pre-split

dec_label_pc_3eec8:                               ; preds = %dec_label_pc_3ee8d, %dec_label_pc_3ee66
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %26 = call i32 @close(i32 %4)
  %27 = call i32 @close(i32 %13)
  store i32 %stack_var_-76.0.ph.reload, ptr %stack_var_-76.1.ph.reg2mem, align 4
  br label %dec_label_pc_3eed2thread-pre-split

dec_label_pc_3eed2thread-pre-split:               ; preds = %dec_label_pc_3edba, %dec_label_pc_3eec8, %dec_label_pc_3eec2.thread6
  %stack_var_-76.1.ph.reload = load i32, ptr %stack_var_-76.1.ph.reg2mem, align 4
  %.pr = load i32, ptr @global_var_bc0a4, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %stack_var_-76.1.ph.reload, ptr %stack_var_-76.1.reg2mem, align 4
  br label %dec_label_pc_3eed2

dec_label_pc_3eed2:                               ; preds = %dec_label_pc_3eed2thread-pre-split, %dec_label_pc_3ed89
  %.reload = load i32, ptr %.reg2mem, align 4
  %28 = icmp eq i32 %.reload, 5
  br i1 %28, label %dec_label_pc_3eeee, label %dec_label_pc_3eedd

dec_label_pc_3eedd:                               ; preds = %dec_label_pc_3eed2
  call void @printLine(ptr @global_var_87458)
  br label %dec_label_pc_3ef1c

dec_label_pc_3eeee:                               ; preds = %dec_label_pc_3eed2
  %stack_var_-76.1.reload = load i32, ptr %stack_var_-76.1.reg2mem, align 4
  %29 = icmp eq i32 %stack_var_-76.1.reload, 2147483647
  br i1 %29, label %dec_label_pc_3ef0d, label %dec_label_pc_3eef7

dec_label_pc_3eef7:                               ; preds = %dec_label_pc_3eeee
  %30 = add i32 %stack_var_-76.1.reload, 1
  call void @printIntLine(i32 %30)
  br label %dec_label_pc_3ef1c

dec_label_pc_3ef0d:                               ; preds = %dec_label_pc_3eeee
  call void @printLine(ptr @global_var_87470)
  br label %dec_label_pc_3ef1c

dec_label_pc_3ef1c:                               ; preds = %dec_label_pc_3ef0d, %dec_label_pc_3eef7, %dec_label_pc_3eedd
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %0, %31
  br i1 %32, label %dec_label_pc_3ef31, label %dec_label_pc_3ef2c

dec_label_pc_3ef2c:                               ; preds = %dec_label_pc_3ef1c
  call void @__stack_chk_fail()
  br label %dec_label_pc_3ef31

dec_label_pc_3ef31:                               ; preds = %dec_label_pc_3ef2c, %dec_label_pc_3ef1c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

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

