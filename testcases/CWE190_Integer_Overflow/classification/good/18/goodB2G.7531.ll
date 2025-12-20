@global_var_73170 = external constant [4 x i8]
@global_var_73178 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_269e9:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_73170, ptr nonnull %stack_var_-20)
  %3 = load i16, ptr %stack_var_-20, align 2
  %4 = sub i16 0, %3
  %5 = icmp slt i16 %4, 0
  %6 = icmp eq i1 %5, false
  %.v = select i1 %6, i16 %4, i16 %3
  %7 = icmp ult i16 %.v, 182
  br i1 %7, label %dec_label_pc_26a40, label %dec_label_pc_26a5e

dec_label_pc_26a40:                               ; preds = %dec_label_pc_269e9
  %8 = mul i16 %3, %3
  %9 = sext i16 %8 to i32
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_26a6d

dec_label_pc_26a5e:                               ; preds = %dec_label_pc_269e9
  call void @printLine(ptr @global_var_73178)
  br label %dec_label_pc_26a6d

dec_label_pc_26a6d:                               ; preds = %dec_label_pc_26a5e, %dec_label_pc_26a40
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_26a82, label %dec_label_pc_26a7d

dec_label_pc_26a7d:                               ; preds = %dec_label_pc_26a6d
  call void @__stack_chk_fail()
  br label %dec_label_pc_26a82

dec_label_pc_26a82:                               ; preds = %dec_label_pc_26a7d, %dec_label_pc_26a6d
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

