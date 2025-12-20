@global_var_87398 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3dec0:
  %stack_var_-76.1.reg2mem = alloca i32, align 4
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_3e00c, label %dec_label_pc_3def4

dec_label_pc_3def4:                               ; preds = %dec_label_pc_3dec0
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_3e00c, label %dec_label_pc_3df23

dec_label_pc_3df23:                               ; preds = %dec_label_pc_3def4
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i16 @htons(i16 27015)
  %7 = bitcast ptr %stack_var_-56 to ptr
  %8 = call i32 @bind(i32 %3, ptr nonnull %7, i32 16)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_3dffc.thread6, label %dec_label_pc_3df6f

dec_label_pc_3df6f:                               ; preds = %dec_label_pc_3df23
  %10 = call i32 @listen(i32 %3, i32 5)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_3dffc.thread6, label %dec_label_pc_3df83

dec_label_pc_3df83:                               ; preds = %dec_label_pc_3df6f
  %12 = call i32 @accept(i32 %3, ptr null, ptr null)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %dec_label_pc_3dffc.thread6, label %dec_label_pc_3dfa0

dec_label_pc_3dfa0:                               ; preds = %dec_label_pc_3df83
  %14 = call i32 @recv(i32 %12, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %15 = add i32 %14, 1
  %16 = icmp ult i32 %15, 2
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %16, label %dec_label_pc_3e002, label %dec_label_pc_3dfc7

dec_label_pc_3dfc7:                               ; preds = %dec_label_pc_3dfa0
  %17 = ptrtoint ptr %stack_var_-8 to i64
  %18 = sext i32 %14 to i64
  %19 = add i64 %17, -22
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  %22 = bitcast ptr %stack_var_-30 to ptr
  %23 = call i32 @atoi(ptr nonnull %22)
  store i32 %23, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_3e002

dec_label_pc_3dffc.thread6:                       ; preds = %dec_label_pc_3df83, %dec_label_pc_3df6f, %dec_label_pc_3df23
  %24 = call i32 @close(i32 %3)
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br label %dec_label_pc_3e00c

dec_label_pc_3e002:                               ; preds = %dec_label_pc_3dfc7, %dec_label_pc_3dfa0
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %3)
  %26 = call i32 @close(i32 %12)
  store i32 %stack_var_-76.0.ph.reload, ptr %stack_var_-76.1.reg2mem, align 4
  br label %dec_label_pc_3e00c

dec_label_pc_3e00c:                               ; preds = %dec_label_pc_3def4, %dec_label_pc_3dffc.thread6, %dec_label_pc_3e002, %dec_label_pc_3dec0
  %27 = call i32 @globalReturnsTrue()
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %dec_label_pc_3e048, label %dec_label_pc_3e01a

dec_label_pc_3e01a:                               ; preds = %dec_label_pc_3e00c
  %stack_var_-76.1.reload = load i32, ptr %stack_var_-76.1.reg2mem, align 4
  %29 = icmp eq i32 %stack_var_-76.1.reload, 2147483647
  br i1 %29, label %dec_label_pc_3e039, label %dec_label_pc_3e023

dec_label_pc_3e023:                               ; preds = %dec_label_pc_3e01a
  %30 = add i32 %stack_var_-76.1.reload, 1
  call void @printIntLine(i32 %30)
  br label %dec_label_pc_3e048

dec_label_pc_3e039:                               ; preds = %dec_label_pc_3e01a
  call void @printLine(ptr @global_var_87398)
  br label %dec_label_pc_3e048

dec_label_pc_3e048:                               ; preds = %dec_label_pc_3e039, %dec_label_pc_3e023, %dec_label_pc_3e00c
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %0, %31
  br i1 %32, label %dec_label_pc_3e05d, label %dec_label_pc_3e058

dec_label_pc_3e058:                               ; preds = %dec_label_pc_3e048
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e05d

dec_label_pc_3e05d:                               ; preds = %dec_label_pc_3e058, %dec_label_pc_3e048
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6a65a:
  ret i32 1
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

