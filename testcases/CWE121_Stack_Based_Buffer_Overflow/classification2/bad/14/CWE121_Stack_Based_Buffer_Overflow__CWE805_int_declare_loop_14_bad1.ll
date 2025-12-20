@global_var_bb9a8 = external constant [4 x i8]
@global_var_e6094 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5424c:
  %0 = alloca ptr, align 8
  %.reg2mem = alloca i64, align 8
  %dataBadBuffer_-640 = alloca [50 x i32], align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-632 = alloca i64, align 8
  %1 = load ptr, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i32, ptr @global_var_e6094, align 4
  %4 = icmp eq i32 %3, 5
  %5 = icmp eq i1 %4, false
  %6 = bitcast ptr %stack_var_-632 to ptr
  %spec.select = select i1 %5, ptr %1, ptr %6
  %7 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 50)
  store [50 x i32] [i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef], ptr %dataBadBuffer_-640, align 8
  %8 = bitcast ptr %dataBadBuffer_-640 to ptr
  %9 = load i64, ptr %8, align 8
  %10 = icmp ult i64 %9, 100
  br i1 %10, label %dec_label_pc_542a7.lr.ph, label %dec_label_pc_542e2

dec_label_pc_542a7.lr.ph:                         ; preds = %dec_label_pc_5424c
  %11 = ptrtoint ptr %stack_var_-8 to i64
  %12 = ptrtoint ptr %spec.select to i64
  %13 = add i64 %11, -416
  store i64 %9, ptr %.reg2mem, align 8
  br label %dec_label_pc_542a7

dec_label_pc_542a7:                               ; preds = %dec_label_pc_542a7.lr.ph, %dec_label_pc_542a7
  %.reload = load i64, ptr %.reg2mem, align 8
  %14 = mul i64 %.reload, 4
  %15 = add i64 %14, %12
  %16 = add i64 %13, %14
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = inttoptr i64 %15 to ptr
  store i32 %18, ptr %19, align 4
  %20 = load i64, ptr %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = add i32 %21, 1
  %23 = insertvalue [50 x i32] undef, i32 %22, 0
  store [50 x i32] %23, ptr %dataBadBuffer_-640, align 8
  %24 = load i64, ptr %8, align 8
  %25 = icmp ult i64 %24, 100
  store i64 %24, ptr %.reg2mem, align 8
  br i1 %25, label %dec_label_pc_542a7, label %dec_label_pc_542e2

dec_label_pc_542e2:                               ; preds = %dec_label_pc_542a7, %dec_label_pc_5424c
  %26 = load i32, ptr %spec.select, align 4
  call void @printIntLine(i32 %26)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %2, %27
  br i1 %28, label %dec_label_pc_54307, label %dec_label_pc_54302

dec_label_pc_54302:                               ; preds = %dec_label_pc_542e2
  call void @__stack_chk_fail()
  br label %dec_label_pc_54307

dec_label_pc_54307:                               ; preds = %dec_label_pc_54302, %dec_label_pc_542e2
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

