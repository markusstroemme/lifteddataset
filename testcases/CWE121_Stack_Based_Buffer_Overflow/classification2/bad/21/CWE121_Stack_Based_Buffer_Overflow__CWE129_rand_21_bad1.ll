@global_var_b8a20 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef1cc = external local_unnamed_addr global i32

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_43e0b:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef1cc, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_43ea2, label %dec_label_pc_43e33

dec_label_pc_43e33:                               ; preds = %dec_label_pc_43e0b
  %3 = icmp slt i32 %data, 0
  br i1 %3, label %dec_label_pc_43e93, label %dec_label_pc_43e61

dec_label_pc_43e61:                               ; preds = %dec_label_pc_43e33
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = sext i32 %data to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %4, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_43e77

dec_label_pc_43e77:                               ; preds = %dec_label_pc_43e77, %dec_label_pc_43e61
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_43ea2, label %dec_label_pc_43e77

dec_label_pc_43e93:                               ; preds = %dec_label_pc_43e33
  call void @printLine(ptr @global_var_b8a20)
  br label %dec_label_pc_43ea2

dec_label_pc_43ea2:                               ; preds = %dec_label_pc_43e77, %dec_label_pc_43e93, %dec_label_pc_43e0b
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_43eb7, label %dec_label_pc_43eb2

dec_label_pc_43eb2:                               ; preds = %dec_label_pc_43ea2
  call void @__stack_chk_fail()
  br label %dec_label_pc_43eb7

dec_label_pc_43eb7:                               ; preds = %dec_label_pc_43eb2, %dec_label_pc_43ea2
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_43eb9:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  store i32 1, ptr @global_var_ef1cc, align 4
  call void @anon1(i32 %storemerge.in)
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

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

