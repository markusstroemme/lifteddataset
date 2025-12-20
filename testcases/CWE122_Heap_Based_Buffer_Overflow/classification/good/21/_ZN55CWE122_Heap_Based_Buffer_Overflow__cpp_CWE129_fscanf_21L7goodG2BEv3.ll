@global_var_ac128 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc12c = external local_unnamed_addr global i32

define i64 @anon0(i32 %arg1) local_unnamed_addr {
dec_label_pc_39b92:
  %0 = alloca i64, align 8
  %rax.2.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc12c, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.2.reg2mem, align 8
  br i1 %3, label %dec_label_pc_39c5e, label %dec_label_pc_39baf

dec_label_pc_39baf:                               ; preds = %dec_label_pc_39b92
  %4 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br label %dec_label_pc_39bc6

dec_label_pc_39bc6:                               ; preds = %dec_label_pc_39bc6, %dec_label_pc_39baf
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %5 = mul i64 %indvars.iv4.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_39bea, label %dec_label_pc_39bc6

dec_label_pc_39bea:                               ; preds = %dec_label_pc_39bc6
  %8 = icmp slt i32 %arg1, 0
  br i1 %8, label %dec_label_pc_39c3c, label %dec_label_pc_39bf0

dec_label_pc_39bf0:                               ; preds = %dec_label_pc_39bea
  %9 = sext i32 %arg1 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %4, %10
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_39c13

dec_label_pc_39c13:                               ; preds = %dec_label_pc_39c13, %dec_label_pc_39bf0
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %4
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_39c4b, label %dec_label_pc_39c13

dec_label_pc_39c3c:                               ; preds = %dec_label_pc_39bea
  call void @printLine(ptr @global_var_ac128)
  br label %dec_label_pc_39c4b

dec_label_pc_39c4b:                               ; preds = %dec_label_pc_39c13, %dec_label_pc_39c3c
  %17 = icmp eq i64 %4, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br i1 %17, label %dec_label_pc_39c5e, label %dec_label_pc_39c52

dec_label_pc_39c52:                               ; preds = %dec_label_pc_39c4b
  %18 = inttoptr i64 %4 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br label %dec_label_pc_39c5e

dec_label_pc_39c5e:                               ; preds = %dec_label_pc_39c52, %dec_label_pc_39c4b, %dec_label_pc_39b92
  %rax.2.reload = load i64, ptr %rax.2.reg2mem, align 8
  ret i64 %rax.2.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_39c61:
  store i32 1, ptr @global_var_dc12c, align 4
  %0 = call i64 @anon0(i32 7)
  ret i64 %0
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

