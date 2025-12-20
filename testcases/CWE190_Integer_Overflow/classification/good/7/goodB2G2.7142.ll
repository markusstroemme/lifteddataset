@global_var_72e08 = external constant [4 x i8]
@global_var_72e28 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a903c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_24e8d:
  %.reg2mem = alloca i32, align 4
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a903c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_24edb, label %dec_label_pc_24eb9

dec_label_pc_24eb9:                               ; preds = %dec_label_pc_24e8d
  %4 = load ptr, ptr @global_var_a9080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_72e08, ptr nonnull %stack_var_-20)
  %.pre = load i32, ptr @global_var_a903c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_24edb

dec_label_pc_24edb:                               ; preds = %dec_label_pc_24eb9, %dec_label_pc_24e8d
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_24f25, label %dec_label_pc_24ee6

dec_label_pc_24ee6:                               ; preds = %dec_label_pc_24edb
  %8 = load i16, ptr %stack_var_-20, align 2
  %9 = sub i16 0, %8
  %10 = icmp slt i16 %9, 0
  %11 = icmp eq i1 %10, false
  %.v = select i1 %11, i16 %9, i16 %8
  %12 = icmp ult i16 %.v, 182
  br i1 %12, label %dec_label_pc_24ef8, label %dec_label_pc_24f16

dec_label_pc_24ef8:                               ; preds = %dec_label_pc_24ee6
  %13 = mul i16 %8, %8
  %14 = sext i16 %13 to i32
  call void @printIntLine(i32 %14)
  br label %dec_label_pc_24f25

dec_label_pc_24f16:                               ; preds = %dec_label_pc_24ee6
  call void @printLine(ptr @global_var_72e28)
  br label %dec_label_pc_24f25

dec_label_pc_24f25:                               ; preds = %dec_label_pc_24f16, %dec_label_pc_24ef8, %dec_label_pc_24edb
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_24f3a, label %dec_label_pc_24f35

dec_label_pc_24f35:                               ; preds = %dec_label_pc_24f25
  call void @__stack_chk_fail()
  br label %dec_label_pc_24f3a

dec_label_pc_24f3a:                               ; preds = %dec_label_pc_24f35, %dec_label_pc_24f25
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

