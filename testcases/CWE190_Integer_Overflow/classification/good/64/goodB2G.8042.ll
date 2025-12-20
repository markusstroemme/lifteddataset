@global_var_73596 = external constant [4 x i8]
@global_var_735a0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_28a6f:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_73596, ptr nonnull %stack_var_-18)
  %3 = bitcast ptr %stack_var_-18 to ptr
  call void @anon0(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_28ad3, label %dec_label_pc_28ace

dec_label_pc_28ace:                               ; preds = %dec_label_pc_28a6f
  call void @__stack_chk_fail()
  br label %dec_label_pc_28ad3

dec_label_pc_28ad3:                               ; preds = %dec_label_pc_28ace, %dec_label_pc_28a6f
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_28b74:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = sub i16 0, %2
  %4 = icmp slt i16 %3, 0
  %5 = icmp eq i1 %4, false
  %.v = select i1 %5, i16 %3, i16 %2
  %6 = icmp ult i16 %.v, 182
  br i1 %6, label %dec_label_pc_28ba9, label %dec_label_pc_28bc5

dec_label_pc_28ba9:                               ; preds = %dec_label_pc_28b74
  %7 = trunc i64 %1 to i32
  %8 = urem i32 %7, 65536
  %narrow = mul i32 %8, 65536
  %sext = mul i32 %narrow, %8
  %9 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_28bd4

dec_label_pc_28bc5:                               ; preds = %dec_label_pc_28b74
  call void @printLine(ptr @global_var_735a0)
  br label %dec_label_pc_28bd4

dec_label_pc_28bd4:                               ; preds = %dec_label_pc_28bc5, %dec_label_pc_28ba9
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

