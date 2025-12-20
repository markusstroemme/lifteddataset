@global_var_abc74 = external constant [3 x i8]
@global_var_abc98 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3587a:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-32, align 4
  %1 = load ptr, ptr @global_var_dc090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_abc74, ptr nonnull %stack_var_-32)
  %3 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_358d5

dec_label_pc_358d5:                               ; preds = %dec_label_pc_358d5, %dec_label_pc_3587a
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %4 = mul i64 %indvars.iv5.reload, 4
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_358f9, label %dec_label_pc_358d5

dec_label_pc_358f9:                               ; preds = %dec_label_pc_358d5
  %7 = load i32, ptr %stack_var_-32, align 4
  %8 = icmp ugt i32 %7, 9
  br i1 %8, label %dec_label_pc_35954, label %dec_label_pc_35908

dec_label_pc_35908:                               ; preds = %dec_label_pc_358f9
  %9 = sext i32 %7 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, %3
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3592b

dec_label_pc_3592b:                               ; preds = %dec_label_pc_3592b, %dec_label_pc_35908
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %3
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_35963, label %dec_label_pc_3592b

dec_label_pc_35954:                               ; preds = %dec_label_pc_358f9
  call void @printLine(ptr @global_var_abc98)
  br label %dec_label_pc_35963

dec_label_pc_35963:                               ; preds = %dec_label_pc_3592b, %dec_label_pc_35954
  %17 = icmp eq i64 %3, 0
  br i1 %17, label %dec_label_pc_35976, label %dec_label_pc_3596a

dec_label_pc_3596a:                               ; preds = %dec_label_pc_35963
  %18 = inttoptr i64 %3 to ptr
  %constexpr = and i64 ptrtoint (ptr @global_var_abc74 to i64), 4294967295
  %constexpr1 = inttoptr i64 %constexpr to ptr
  call void @_ZdaPv(ptr %18, ptr %constexpr1)
  br label %dec_label_pc_35976

dec_label_pc_35976:                               ; preds = %dec_label_pc_3596a, %dec_label_pc_35963
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_3598b, label %dec_label_pc_35986

dec_label_pc_35986:                               ; preds = %dec_label_pc_35976
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3598b

dec_label_pc_3598b:                               ; preds = %dec_label_pc_35986, %dec_label_pc_35976
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

