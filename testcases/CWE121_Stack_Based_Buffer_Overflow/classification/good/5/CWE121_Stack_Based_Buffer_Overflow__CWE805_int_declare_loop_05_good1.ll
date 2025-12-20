@global_var_b7b45 = external constant [21 x i8]
@global_var_bb9a8 = external constant [4 x i8]
@global_var_e6228 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_52df7:
  %.reg2mem = alloca i64, align 8
  %stack_var_-840.0.reg2mem = alloca ptr, align 8
  %dataGoodBuffer_-832 = alloca [100 x i32], align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_e6228, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_52e30, label %dec_label_pc_52e1f

dec_label_pc_52e1f:                               ; preds = %dec_label_pc_52df7
  call void @printLine(ptr @global_var_b7b45)
  br label %dec_label_pc_52e3e

dec_label_pc_52e30:                               ; preds = %dec_label_pc_52df7
  %3 = bitcast ptr %stack_var_-824 to ptr
  store ptr %3, ptr %stack_var_-840.0.reg2mem, align 8
  br label %dec_label_pc_52e3e

dec_label_pc_52e3e:                               ; preds = %dec_label_pc_52e30, %dec_label_pc_52e1f
  %stack_var_-840.0.reload = load ptr, ptr %stack_var_-840.0.reg2mem, align 8
  %4 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 50)
  store [100 x i32] [i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef], ptr %dataGoodBuffer_-832, align 8
  %5 = bitcast ptr %dataGoodBuffer_-832 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = icmp ult i64 %6, 100
  br i1 %7, label %dec_label_pc_52e62.lr.ph, label %dec_label_pc_52e9d

dec_label_pc_52e62.lr.ph:                         ; preds = %dec_label_pc_52e3e
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %9 = ptrtoint ptr %stack_var_-840.0.reload to i64
  %10 = add i64 %8, -416
  store i64 %6, ptr %.reg2mem, align 8
  br label %dec_label_pc_52e62

dec_label_pc_52e62:                               ; preds = %dec_label_pc_52e62.lr.ph, %dec_label_pc_52e62
  %.reload = load i64, ptr %.reg2mem, align 8
  %11 = mul i64 %.reload, 4
  %12 = add i64 %11, %9
  %13 = add i64 %10, %11
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i64 %12 to ptr
  store i32 %15, ptr %16, align 4
  %17 = load i64, ptr %5, align 8
  %18 = trunc i64 %17 to i32
  %19 = add i32 %18, 1
  %20 = insertvalue [100 x i32] undef, i32 %19, 0
  store [100 x i32] %20, ptr %dataGoodBuffer_-832, align 8
  %21 = load i64, ptr %5, align 8
  %22 = icmp ult i64 %21, 100
  store i64 %21, ptr %.reg2mem, align 8
  br i1 %22, label %dec_label_pc_52e62, label %dec_label_pc_52e9d

dec_label_pc_52e9d:                               ; preds = %dec_label_pc_52e62, %dec_label_pc_52e3e
  %23 = load i32, ptr %stack_var_-840.0.reload, align 4
  call void @printIntLine(i32 %23)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  br i1 %25, label %dec_label_pc_52ec2, label %dec_label_pc_52ebd

dec_label_pc_52ebd:                               ; preds = %dec_label_pc_52e9d
  call void @__stack_chk_fail()
  br label %dec_label_pc_52ec2

dec_label_pc_52ec2:                               ; preds = %dec_label_pc_52ebd, %dec_label_pc_52e9d
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9cb1b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9cb3e, label %dec_label_pc_9cb32

dec_label_pc_9cb32:                               ; preds = %dec_label_pc_9cb1b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9cb3e

dec_label_pc_9cb3e:                               ; preds = %dec_label_pc_9cb32, %dec_label_pc_9cb1b
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

declare i32 @puts(ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

