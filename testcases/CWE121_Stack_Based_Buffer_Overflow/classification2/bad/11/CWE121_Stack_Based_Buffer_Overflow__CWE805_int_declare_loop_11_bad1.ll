@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_53bc0:
  %0 = alloca ptr, align 8
  %.reg2mem = alloca i64, align 8
  %dataBadBuffer_-640 = alloca [50 x i32], align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-632 = alloca i64, align 8
  %1 = load ptr, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @globalReturnsTrue()
  %4 = icmp eq i32 %3, 0
  %5 = bitcast ptr %stack_var_-632 to ptr
  %spec.select = select i1 %4, ptr %1, ptr %5
  %6 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 50)
  store [50 x i32] [i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef], ptr %dataBadBuffer_-640, align 8
  %7 = bitcast ptr %dataBadBuffer_-640 to ptr
  %8 = load i64, ptr %7, align 8
  %9 = icmp ult i64 %8, 100
  br i1 %9, label %dec_label_pc_53c1e.lr.ph, label %dec_label_pc_53c59

dec_label_pc_53c1e.lr.ph:                         ; preds = %dec_label_pc_53bc0
  %10 = ptrtoint ptr %stack_var_-8 to i64
  %11 = ptrtoint ptr %spec.select to i64
  %12 = add i64 %10, -416
  store i64 %8, ptr %.reg2mem, align 8
  br label %dec_label_pc_53c1e

dec_label_pc_53c1e:                               ; preds = %dec_label_pc_53c1e.lr.ph, %dec_label_pc_53c1e
  %.reload = load i64, ptr %.reg2mem, align 8
  %13 = mul i64 %.reload, 4
  %14 = add i64 %13, %11
  %15 = add i64 %12, %13
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = inttoptr i64 %14 to ptr
  store i32 %17, ptr %18, align 4
  %19 = load i64, ptr %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = add i32 %20, 1
  %22 = insertvalue [50 x i32] undef, i32 %21, 0
  store [50 x i32] %22, ptr %dataBadBuffer_-640, align 8
  %23 = load i64, ptr %7, align 8
  %24 = icmp ult i64 %23, 100
  store i64 %23, ptr %.reg2mem, align 8
  br i1 %24, label %dec_label_pc_53c1e, label %dec_label_pc_53c59

dec_label_pc_53c59:                               ; preds = %dec_label_pc_53c1e, %dec_label_pc_53bc0
  %25 = load i32, ptr %spec.select, align 4
  call void @printIntLine(i32 %25)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %2, %26
  br i1 %27, label %dec_label_pc_53c7e, label %dec_label_pc_53c79

dec_label_pc_53c79:                               ; preds = %dec_label_pc_53c59
  call void @__stack_chk_fail()
  br label %dec_label_pc_53c7e

dec_label_pc_53c7e:                               ; preds = %dec_label_pc_53c79, %dec_label_pc_53c59
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_9d02b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

