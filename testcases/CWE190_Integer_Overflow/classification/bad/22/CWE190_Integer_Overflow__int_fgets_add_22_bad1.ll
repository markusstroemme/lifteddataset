@global_var_90516 = external constant [16 x i8]
@CWE190_Integer_Overflow__int_fgets_add_22_badGlobal = external local_unnamed_addr global i32
@global_var_9543c = external constant [4 x i8]
@global_var_c3080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_5131c:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_c3080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_51381, label %dec_label_pc_51370

dec_label_pc_51370:                               ; preds = %dec_label_pc_5131c
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_51390

dec_label_pc_51381:                               ; preds = %dec_label_pc_5131c
  call void @printLine(ptr @global_var_90516)
  store i32 0, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_51390

dec_label_pc_51390:                               ; preds = %dec_label_pc_51381, %dec_label_pc_51370
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 1, ptr @CWE190_Integer_Overflow__int_fgets_add_22_badGlobal, align 4
  call void @anon1(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_513b9, label %dec_label_pc_513b4

dec_label_pc_513b4:                               ; preds = %dec_label_pc_51390
  call void @__stack_chk_fail()
  br label %dec_label_pc_513b9

dec_label_pc_513b9:                               ; preds = %dec_label_pc_513b4, %dec_label_pc_51390
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_51553:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_fgets_add_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5157f, label %dec_label_pc_5156c

dec_label_pc_5156c:                               ; preds = %dec_label_pc_51553
  %2 = add i32 %data, 1
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_5157f

dec_label_pc_5157f:                               ; preds = %dec_label_pc_5156c, %dec_label_pc_51553
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

