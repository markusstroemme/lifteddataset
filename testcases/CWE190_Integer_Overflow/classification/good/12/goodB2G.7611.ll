@global_var_852e0 = external constant [10 x i8]
@global_var_852f0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_29af2:
  %stack_var_-84.2.reg2mem = alloca i32, align 4
  %stack_var_-84.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-84.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  br i1 %3, label %dec_label_pc_29c04, label %dec_label_pc_29b26

dec_label_pc_29b26:                               ; preds = %dec_label_pc_29af2
  store i32 0, ptr %stack_var_-84.2.reg2mem, align 4
  br i1 %5, label %dec_label_pc_29cd9, label %dec_label_pc_29b4e

dec_label_pc_29b4e:                               ; preds = %dec_label_pc_29b26
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i32 @inet_addr(ptr @global_var_852e0)
  %8 = call i16 @htons(i16 27015)
  %9 = bitcast ptr %stack_var_-56 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 0, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_29bf5, label %dec_label_pc_29ba5

dec_label_pc_29ba5:                               ; preds = %dec_label_pc_29b4e
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 0, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_29bf5, label %dec_label_pc_29bcc

dec_label_pc_29bcc:                               ; preds = %dec_label_pc_29ba5
  %15 = sext i32 %12 to i64
  %16 = add i64 %0, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br label %dec_label_pc_29bf5

dec_label_pc_29bf5:                               ; preds = %dec_label_pc_29b4e, %dec_label_pc_29bcc, %dec_label_pc_29ba5
  %stack_var_-84.0.ph.reload = load i32, ptr %stack_var_-84.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %4)
  store i32 %stack_var_-84.0.ph.reload, ptr %stack_var_-84.2.reg2mem, align 4
  br label %dec_label_pc_29cd9

dec_label_pc_29c04:                               ; preds = %dec_label_pc_29af2
  store i32 0, ptr %stack_var_-84.2.reg2mem, align 4
  br i1 %5, label %dec_label_pc_29cd9, label %dec_label_pc_29c2c

dec_label_pc_29c2c:                               ; preds = %dec_label_pc_29c04
  %22 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %23 = call i32 @inet_addr(ptr @global_var_852e0)
  %24 = call i16 @htons(i16 27015)
  %25 = bitcast ptr %stack_var_-56 to ptr
  %26 = call i32 @connect(i32 %4, ptr nonnull %25, i32 16)
  %27 = icmp eq i32 %26, -1
  store i32 0, ptr %stack_var_-84.1.ph.reg2mem, align 4
  br i1 %27, label %dec_label_pc_29ccf, label %dec_label_pc_29c83

dec_label_pc_29c83:                               ; preds = %dec_label_pc_29c2c
  %28 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %29 = add i32 %28, 1
  %30 = icmp ult i32 %29, 2
  store i32 0, ptr %stack_var_-84.1.ph.reg2mem, align 4
  br i1 %30, label %dec_label_pc_29ccf, label %dec_label_pc_29caa

dec_label_pc_29caa:                               ; preds = %dec_label_pc_29c83
  %31 = sext i32 %28 to i64
  %32 = add i64 %0, -22
  %33 = add i64 %32, %31
  %34 = inttoptr i64 %33 to ptr
  store i8 0, ptr %34, align 1
  %35 = bitcast ptr %stack_var_-30 to ptr
  %36 = call i32 @atoi(ptr nonnull %35)
  store i32 %36, ptr %stack_var_-84.1.ph.reg2mem, align 4
  br label %dec_label_pc_29ccf

dec_label_pc_29ccf:                               ; preds = %dec_label_pc_29c2c, %dec_label_pc_29caa, %dec_label_pc_29c83
  %stack_var_-84.1.ph.reload = load i32, ptr %stack_var_-84.1.ph.reg2mem, align 4
  %37 = call i32 @close(i32 %4)
  store i32 %stack_var_-84.1.ph.reload, ptr %stack_var_-84.2.reg2mem, align 4
  br label %dec_label_pc_29cd9

dec_label_pc_29cd9:                               ; preds = %dec_label_pc_29c04, %dec_label_pc_29b26, %dec_label_pc_29ccf, %dec_label_pc_29bf5
  %stack_var_-84.2.reload = load i32, ptr %stack_var_-84.2.reg2mem, align 4
  %38 = call i32 @globalReturnsTrueOrFalse()
  %39 = icmp eq i32 %38, 0
  %40 = icmp eq i32 %stack_var_-84.2.reload, 2147483647
  br i1 %39, label %dec_label_pc_29d17, label %dec_label_pc_29ce7

dec_label_pc_29ce7:                               ; preds = %dec_label_pc_29cd9
  br i1 %40, label %dec_label_pc_29d06, label %dec_label_pc_29cf0

dec_label_pc_29cf0:                               ; preds = %dec_label_pc_29ce7
  %41 = add i32 %stack_var_-84.2.reload, 1
  call void @printIntLine(i32 %41)
  br label %dec_label_pc_29d45

dec_label_pc_29d06:                               ; preds = %dec_label_pc_29ce7
  call void @printLine(ptr @global_var_852f0)
  br label %dec_label_pc_29d45

dec_label_pc_29d17:                               ; preds = %dec_label_pc_29cd9
  br i1 %40, label %dec_label_pc_29d36, label %dec_label_pc_29d20

dec_label_pc_29d20:                               ; preds = %dec_label_pc_29d17
  %42 = add i32 %stack_var_-84.2.reload, 1
  call void @printIntLine(i32 %42)
  br label %dec_label_pc_29d45

dec_label_pc_29d36:                               ; preds = %dec_label_pc_29d17
  call void @printLine(ptr @global_var_852f0)
  br label %dec_label_pc_29d45

dec_label_pc_29d45:                               ; preds = %dec_label_pc_29d36, %dec_label_pc_29d20, %dec_label_pc_29d06, %dec_label_pc_29cf0
  %43 = call i64 @__readfsqword(i64 40)
  %44 = icmp eq i64 %1, %43
  br i1 %44, label %dec_label_pc_29d5a, label %dec_label_pc_29d55

dec_label_pc_29d55:                               ; preds = %dec_label_pc_29d45
  call void @__stack_chk_fail()
  br label %dec_label_pc_29d5a

dec_label_pc_29d5a:                               ; preds = %dec_label_pc_29d55, %dec_label_pc_29d45
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

