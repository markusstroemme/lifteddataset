@global_var_b7dd0 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_37be9:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-92.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_37d18.thread, label %dec_label_pc_37c18

dec_label_pc_37c18:                               ; preds = %dec_label_pc_37be9
  %3 = bitcast ptr %stack_var_-72 to ptr
  %4 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %5 = call i16 @htons(i16 27015)
  %6 = call i32 @bind(i32 %1, ptr nonnull %3, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_37cf1.thread11, label %dec_label_pc_37c64

dec_label_pc_37c64:                               ; preds = %dec_label_pc_37c18
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_37cf1.thread11, label %dec_label_pc_37c78

dec_label_pc_37c78:                               ; preds = %dec_label_pc_37c64
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_37cf1.thread11, label %dec_label_pc_37c95

dec_label_pc_37c95:                               ; preds = %dec_label_pc_37c78
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %14 = add i32 %13, 1
  %15 = icmp ult i32 %14, 2
  store i32 -1, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br i1 %15, label %dec_label_pc_37d18, label %dec_label_pc_37cbc

dec_label_pc_37cbc:                               ; preds = %dec_label_pc_37c95
  %16 = add i64 %12, -22
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = sext i32 %13 to i64
  %19 = add i64 %16, %18
  %20 = inttoptr i64 %19 to ptr
  store i8 0, ptr %20, align 1
  %21 = call i32 @atoi(ptr nonnull %17)
  store i32 %21, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br label %dec_label_pc_37d18

dec_label_pc_37cf1.thread11:                      ; preds = %dec_label_pc_37c78, %dec_label_pc_37c64, %dec_label_pc_37c18
  %22 = call i32 @close(i32 %1)
  br label %dec_label_pc_37d18.thread

dec_label_pc_37d18.thread:                        ; preds = %dec_label_pc_37cf1.thread11, %dec_label_pc_37be9
  store i64 0, ptr %stack_var_-72, align 8
  br label %dec_label_pc_37d7e

dec_label_pc_37d18:                               ; preds = %dec_label_pc_37c95, %dec_label_pc_37cbc
  %stack_var_-92.0.ph.reload = load i32, ptr %stack_var_-92.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  %25 = icmp ugt i32 %stack_var_-92.0.ph.reload, 9
  store i64 0, ptr %stack_var_-72, align 8
  br i1 %25, label %dec_label_pc_37d7e, label %dec_label_pc_37d4c

dec_label_pc_37d4c:                               ; preds = %dec_label_pc_37d18
  %26 = add i64 %12, -64
  %27 = sext i32 %stack_var_-92.0.ph.reload to i64
  %28 = mul i64 %27, 4
  %29 = add i64 %28, %26
  %30 = inttoptr i64 %29 to ptr
  store i32 1, ptr %30, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_37d62

dec_label_pc_37d62:                               ; preds = %dec_label_pc_37d62, %dec_label_pc_37d4c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %31 = mul i64 %indvars.iv.reload, 4
  %32 = add i64 %31, %26
  %33 = inttoptr i64 %32 to ptr
  %34 = load i32, ptr %33, align 4
  call void @printIntLine(i32 %34)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_37d97, label %dec_label_pc_37d62

dec_label_pc_37d7e:                               ; preds = %dec_label_pc_37d18.thread, %dec_label_pc_37d18
  call void @printLine(ptr @global_var_b7dd0)
  br label %dec_label_pc_37d97

dec_label_pc_37d97:                               ; preds = %dec_label_pc_37d62, %dec_label_pc_37d7e
  %35 = call i64 @__readfsqword(i64 40)
  %36 = icmp eq i64 %0, %35
  br i1 %36, label %dec_label_pc_37dac, label %dec_label_pc_37da7

dec_label_pc_37da7:                               ; preds = %dec_label_pc_37d97
  call void @__stack_chk_fail()
  br label %dec_label_pc_37dac

dec_label_pc_37dac:                               ; preds = %dec_label_pc_37da7, %dec_label_pc_37d97
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

