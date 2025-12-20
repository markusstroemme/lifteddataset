@global_var_856c8 = external constant [10 x i8]
@global_var_856d8 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@0 = external global i32

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_2cb60:
  %rax.0.reg2mem = alloca i32, align 4
  %stack_var_-76.03.reg2mem = alloca i32, align 4
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 %data, ptr %stack_var_-76.03.reg2mem, align 4
  br i1 %2, label %dec_label_pc_2cc53, label %dec_label_pc_2cba6

dec_label_pc_2cba6:                               ; preds = %dec_label_pc_2cb60
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_856c8)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  store i32 %data, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %8, label %dec_label_pc_2cc49, label %dec_label_pc_2cbfd

dec_label_pc_2cbfd:                               ; preds = %dec_label_pc_2cba6
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i32 %data, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_2cc49, label %dec_label_pc_2cc24

dec_label_pc_2cc24:                               ; preds = %dec_label_pc_2cbfd
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = sext i32 %9 to i64
  %14 = add i64 %12, -22
  %15 = add i64 %14, %13
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = call i32 @atoi(ptr nonnull %17)
  store i32 %18, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_2cc49

dec_label_pc_2cc49:                               ; preds = %dec_label_pc_2cba6, %dec_label_pc_2cc24, %dec_label_pc_2cbfd
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %19 = call i32 @close(i32 %1)
  store i32 %stack_var_-76.0.ph.reload, ptr %stack_var_-76.03.reg2mem, align 4
  br label %dec_label_pc_2cc53

dec_label_pc_2cc53:                               ; preds = %dec_label_pc_2cb60, %dec_label_pc_2cc49
  %stack_var_-76.03.reload = load i32, ptr %stack_var_-76.03.reg2mem, align 4
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  store i32 %stack_var_-76.03.reload, ptr %rax.0.reg2mem, align 4
  br i1 %21, label %dec_label_pc_2cc6a, label %dec_label_pc_2cc65

dec_label_pc_2cc65:                               ; preds = %dec_label_pc_2cc53
  call void @__stack_chk_fail()
  store i32 ptrtoint (ptr @0 to i32), ptr %rax.0.reg2mem, align 4
  br label %dec_label_pc_2cc6a

dec_label_pc_2cc6a:                               ; preds = %dec_label_pc_2cc65, %dec_label_pc_2cc53
  %rax.0.reload = load i32, ptr %rax.0.reg2mem, align 4
  ret i32 %rax.0.reload
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2cc6c:
  %0 = call i32 @anon0(i32 0)
  %1 = icmp eq i32 %0, 2147483647
  br i1 %1, label %dec_label_pc_2ccab, label %dec_label_pc_2cc95

dec_label_pc_2cc95:                               ; preds = %dec_label_pc_2cc6c
  %2 = add i32 %0, 1
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_2ccba

dec_label_pc_2ccab:                               ; preds = %dec_label_pc_2cc6c
  call void @printLine(ptr @global_var_856d8)
  br label %dec_label_pc_2ccba

dec_label_pc_2ccba:                               ; preds = %dec_label_pc_2ccab, %dec_label_pc_2cc95
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

declare i32 @inet_addr(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

