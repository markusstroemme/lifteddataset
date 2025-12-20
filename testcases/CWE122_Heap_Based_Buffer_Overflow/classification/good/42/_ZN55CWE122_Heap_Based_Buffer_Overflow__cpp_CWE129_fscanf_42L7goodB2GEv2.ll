@global_var_ac3a0 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr
@global_var_ac378 = external constant [3 x i8]

define i64 @anon0(i32 %arg1) local_unnamed_addr {
dec_label_pc_3b40a:
  %0 = load ptr, ptr @global_var_dc090, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_ac378)
  %2 = zext i32 %arg1 to i64
  ret i64 %2
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_3b440:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @anon0(i32 -1)
  %3 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br label %dec_label_pc_3b477

dec_label_pc_3b477:                               ; preds = %dec_label_pc_3b477, %dec_label_pc_3b440
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %4 = mul i64 %indvars.iv6.reload, 4
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_3b49b, label %dec_label_pc_3b477

dec_label_pc_3b49b:                               ; preds = %dec_label_pc_3b477
  %7 = trunc i64 %2 to i32
  %8 = icmp ugt i32 %7, 9
  br i1 %8, label %dec_label_pc_3b4f3, label %dec_label_pc_3b4a7

dec_label_pc_3b4a7:                               ; preds = %dec_label_pc_3b49b
  %sext = mul i64 %2, 4294967296
  %9 = ashr exact i64 %sext, 30
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3b4ca

dec_label_pc_3b4ca:                               ; preds = %dec_label_pc_3b4ca, %dec_label_pc_3b4a7
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3b502, label %dec_label_pc_3b4ca

dec_label_pc_3b4f3:                               ; preds = %dec_label_pc_3b49b
  call void @printLine(ptr @global_var_ac3a0)
  br label %dec_label_pc_3b502

dec_label_pc_3b502:                               ; preds = %dec_label_pc_3b4ca, %dec_label_pc_3b4f3
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %dec_label_pc_3b515, label %dec_label_pc_3b509

dec_label_pc_3b509:                               ; preds = %dec_label_pc_3b502
  %17 = inttoptr i64 %3 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_3b515

dec_label_pc_3b515:                               ; preds = %dec_label_pc_3b509, %dec_label_pc_3b502
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

