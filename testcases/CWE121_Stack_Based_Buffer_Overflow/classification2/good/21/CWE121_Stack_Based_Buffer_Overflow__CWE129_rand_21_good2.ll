@global_var_b8a58 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef1d4 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_44070:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef1d4, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4410f, label %dec_label_pc_44098

dec_label_pc_44098:                               ; preds = %dec_label_pc_44070
  %3 = icmp ugt i32 %data, 9
  br i1 %3, label %dec_label_pc_440fe, label %dec_label_pc_440cc

dec_label_pc_440cc:                               ; preds = %dec_label_pc_44098
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = sext i32 %data to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %4, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_440e2

dec_label_pc_440e2:                               ; preds = %dec_label_pc_440e2, %dec_label_pc_440cc
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4410f, label %dec_label_pc_440e2

dec_label_pc_440fe:                               ; preds = %dec_label_pc_44098
  call void @printLine(ptr @global_var_b8a58)
  br label %dec_label_pc_4410f

dec_label_pc_4410f:                               ; preds = %dec_label_pc_440e2, %dec_label_pc_440fe, %dec_label_pc_44070
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_44124, label %dec_label_pc_4411f

dec_label_pc_4411f:                               ; preds = %dec_label_pc_4410f
  call void @__stack_chk_fail()
  br label %dec_label_pc_44124

dec_label_pc_44124:                               ; preds = %dec_label_pc_4411f, %dec_label_pc_4410f
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_44126:
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
  store i32 1, ptr @global_var_ef1d4, align 4
  call void @anon0(i32 %storemerge.in)
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

