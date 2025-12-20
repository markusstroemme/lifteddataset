@global_var_b4ae0 = external constant [10 x i8]
@global_var_b4aea = external constant [21 x i8]
@global_var_b4b00 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef0a4 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_10afe:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef0a4, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_10b37, label %dec_label_pc_10b26

dec_label_pc_10b26:                               ; preds = %dec_label_pc_10afe
  call void @printLine(ptr @global_var_b4aea)
  br label %dec_label_pc_10bae

dec_label_pc_10b37:                               ; preds = %dec_label_pc_10afe
  %3 = icmp ugt i32 %data, 9
  br i1 %3, label %dec_label_pc_10b9d, label %dec_label_pc_10b6b

dec_label_pc_10b6b:                               ; preds = %dec_label_pc_10b37
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = sext i32 %data to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %4, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_10b81

dec_label_pc_10b81:                               ; preds = %dec_label_pc_10b81, %dec_label_pc_10b6b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_10bae, label %dec_label_pc_10b81

dec_label_pc_10b9d:                               ; preds = %dec_label_pc_10b37
  call void @printLine(ptr @global_var_b4b00)
  br label %dec_label_pc_10bae

dec_label_pc_10bae:                               ; preds = %dec_label_pc_10b81, %dec_label_pc_10b9d, %dec_label_pc_10b26
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_10bc3, label %dec_label_pc_10bbe

dec_label_pc_10bbe:                               ; preds = %dec_label_pc_10bae
  call void @__stack_chk_fail()
  br label %dec_label_pc_10bc3

dec_label_pc_10bc3:                               ; preds = %dec_label_pc_10bbe, %dec_label_pc_10bae
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_10bc5:
  %stack_var_-68.03.reg2mem = alloca i32, align 4
  %stack_var_-68.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-68.03.reg2mem, align 4
  br i1 %2, label %dec_label_pc_10cbc, label %dec_label_pc_10c0f

dec_label_pc_10c0f:                               ; preds = %dec_label_pc_10bc5
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_b4ae0)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  store i32 -1, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %8, label %dec_label_pc_10cb2, label %dec_label_pc_10c66

dec_label_pc_10c66:                               ; preds = %dec_label_pc_10c0f
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i32 -1, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_10cb2, label %dec_label_pc_10c8d

dec_label_pc_10c8d:                               ; preds = %dec_label_pc_10c66
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = sext i32 %9 to i64
  %14 = add i64 %12, -22
  %15 = add i64 %14, %13
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = call i32 @atoi(ptr nonnull %17)
  store i32 %18, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br label %dec_label_pc_10cb2

dec_label_pc_10cb2:                               ; preds = %dec_label_pc_10c0f, %dec_label_pc_10c8d, %dec_label_pc_10c66
  %stack_var_-68.0.ph.reload = load i32, ptr %stack_var_-68.0.ph.reg2mem, align 4
  %19 = call i32 @close(i32 %1)
  store i32 %stack_var_-68.0.ph.reload, ptr %stack_var_-68.03.reg2mem, align 4
  br label %dec_label_pc_10cbc

dec_label_pc_10cbc:                               ; preds = %dec_label_pc_10bc5, %dec_label_pc_10cb2
  %stack_var_-68.03.reload = load i32, ptr %stack_var_-68.03.reg2mem, align 4
  store i32 0, ptr @global_var_ef0a4, align 4
  call void @anon0(i32 %stack_var_-68.03.reload)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_10ce5, label %dec_label_pc_10ce0

dec_label_pc_10ce0:                               ; preds = %dec_label_pc_10cbc
  call void @__stack_chk_fail()
  br label %dec_label_pc_10ce5

dec_label_pc_10ce5:                               ; preds = %dec_label_pc_10ce0, %dec_label_pc_10cbc
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

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

