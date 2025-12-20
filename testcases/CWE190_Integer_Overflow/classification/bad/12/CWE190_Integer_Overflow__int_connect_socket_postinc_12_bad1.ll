@global_var_85540 = external constant [10 x i8]
@global_var_85550 = external constant [54 x i8]
@global_var_8ca7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_29977:
  %stack_var_-76.1.reg2mem = alloca i32, align 4
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 2, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_29a89, label %dec_label_pc_299ab

dec_label_pc_299ab:                               ; preds = %dec_label_pc_29977
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_29a89, label %dec_label_pc_299d3

dec_label_pc_299d3:                               ; preds = %dec_label_pc_299ab
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i32 @inet_addr(ptr @global_var_85540)
  %7 = call i16 @htons(i16 27015)
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @connect(i32 %3, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %10, label %dec_label_pc_29a76, label %dec_label_pc_29a2a

dec_label_pc_29a2a:                               ; preds = %dec_label_pc_299d3
  %11 = call i32 @recv(i32 %3, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %13, label %dec_label_pc_29a76, label %dec_label_pc_29a51

dec_label_pc_29a51:                               ; preds = %dec_label_pc_29a2a
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_29a76

dec_label_pc_29a76:                               ; preds = %dec_label_pc_299d3, %dec_label_pc_29a51, %dec_label_pc_29a2a
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %3)
  store i32 %stack_var_-76.0.ph.reload, ptr %stack_var_-76.1.reg2mem, align 4
  br label %dec_label_pc_29a89

dec_label_pc_29a89:                               ; preds = %dec_label_pc_299ab, %dec_label_pc_29977, %dec_label_pc_29a76
  %stack_var_-76.1.reload = load i32, ptr %stack_var_-76.1.reg2mem, align 4
  %22 = call i32 @globalReturnsTrueOrFalse()
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %dec_label_pc_29aad, label %dec_label_pc_29a97

dec_label_pc_29a97:                               ; preds = %dec_label_pc_29a89
  %24 = add i32 %stack_var_-76.1.reload, 1
  call void @printIntLine(i32 %24)
  br label %dec_label_pc_29adb

dec_label_pc_29aad:                               ; preds = %dec_label_pc_29a89
  %25 = icmp eq i32 %stack_var_-76.1.reload, 2147483647
  br i1 %25, label %dec_label_pc_29acc, label %dec_label_pc_29ab6

dec_label_pc_29ab6:                               ; preds = %dec_label_pc_29aad
  %26 = add i32 %stack_var_-76.1.reload, 1
  call void @printIntLine(i32 %26)
  br label %dec_label_pc_29adb

dec_label_pc_29acc:                               ; preds = %dec_label_pc_29aad
  call void @printLine(ptr @global_var_85550)
  br label %dec_label_pc_29adb

dec_label_pc_29adb:                               ; preds = %dec_label_pc_29acc, %dec_label_pc_29ab6, %dec_label_pc_29a97
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_29af0, label %dec_label_pc_29aeb

dec_label_pc_29aeb:                               ; preds = %dec_label_pc_29adb
  call void @__stack_chk_fail()
  br label %dec_label_pc_29af0

dec_label_pc_29af0:                               ; preds = %dec_label_pc_29aeb, %dec_label_pc_29adb
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
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
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

