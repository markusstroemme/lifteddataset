@global_var_74ee0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a923c = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_32d26:
  %0 = load i32, ptr @global_var_a923c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_32d7f, label %dec_label_pc_32d42

dec_label_pc_32d42:                               ; preds = %dec_label_pc_32d26
  %2 = sub i16 0, %data
  %3 = icmp slt i16 %2, 0
  %4 = icmp eq i1 %3, false
  %.v = select i1 %4, i16 %2, i16 %data
  %5 = icmp ult i16 %.v, 182
  br i1 %5, label %dec_label_pc_32d54, label %dec_label_pc_32d70

dec_label_pc_32d54:                               ; preds = %dec_label_pc_32d42
  %6 = mul i16 %data, %data
  %7 = sext i16 %6 to i32
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_32d7f

dec_label_pc_32d70:                               ; preds = %dec_label_pc_32d42
  call void @printLine(ptr @global_var_74ee0)
  br label %dec_label_pc_32d7f

dec_label_pc_32d7f:                               ; preds = %dec_label_pc_32d70, %dec_label_pc_32d54, %dec_label_pc_32d26
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_32d82:
  store i32 1, ptr @global_var_a923c, align 4
  call void @anon0(i16 32767)
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

declare i32 @puts(ptr) local_unnamed_addr

