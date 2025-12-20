@global_var_72e08 = external constant [4 x i8]
@global_var_72e0c = external constant [21 x i8]
@global_var_72e28 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a903c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_24dcd:
  %.reg2mem = alloca i32, align 4
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a903c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_24e1b, label %dec_label_pc_24df9

dec_label_pc_24df9:                               ; preds = %dec_label_pc_24dcd
  %4 = load ptr, ptr @global_var_a9080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_72e08, ptr nonnull %stack_var_-20)
  %.pr = load i32, ptr @global_var_a903c, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_24e1b

dec_label_pc_24e1b:                               ; preds = %dec_label_pc_24df9, %dec_label_pc_24dcd
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_24e37, label %dec_label_pc_24e26

dec_label_pc_24e26:                               ; preds = %dec_label_pc_24e1b
  call void @printLine(ptr @global_var_72e0c)
  br label %dec_label_pc_24e76

dec_label_pc_24e37:                               ; preds = %dec_label_pc_24e1b
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = sub i16 0, %7
  %9 = icmp slt i16 %8, 0
  %10 = icmp eq i1 %9, false
  %.v = select i1 %10, i16 %8, i16 %7
  %11 = icmp ult i16 %.v, 182
  br i1 %11, label %dec_label_pc_24e49, label %dec_label_pc_24e67

dec_label_pc_24e49:                               ; preds = %dec_label_pc_24e37
  %12 = mul i16 %7, %7
  %13 = sext i16 %12 to i32
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_24e76

dec_label_pc_24e67:                               ; preds = %dec_label_pc_24e37
  call void @printLine(ptr @global_var_72e28)
  br label %dec_label_pc_24e76

dec_label_pc_24e76:                               ; preds = %dec_label_pc_24e67, %dec_label_pc_24e49, %dec_label_pc_24e26
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_24e8b, label %dec_label_pc_24e86

dec_label_pc_24e86:                               ; preds = %dec_label_pc_24e76
  call void @__stack_chk_fail()
  br label %dec_label_pc_24e8b

dec_label_pc_24e8b:                               ; preds = %dec_label_pc_24e86, %dec_label_pc_24e76
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

