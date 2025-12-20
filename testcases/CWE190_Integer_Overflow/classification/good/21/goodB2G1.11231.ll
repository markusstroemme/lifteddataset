@global_var_74ec8 = external constant [21 x i8]
@global_var_74ee0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9238 = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_32c89:
  %0 = load i32, ptr @global_var_a9238, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_32cb6, label %dec_label_pc_32ca5

dec_label_pc_32ca5:                               ; preds = %dec_label_pc_32c89
  call void @printLine(ptr @global_var_74ec8)
  br label %dec_label_pc_32cf3

dec_label_pc_32cb6:                               ; preds = %dec_label_pc_32c89
  %2 = sub i16 0, %data
  %3 = icmp slt i16 %2, 0
  %4 = icmp eq i1 %3, false
  %.v = select i1 %4, i16 %2, i16 %data
  %5 = icmp ult i16 %.v, 182
  br i1 %5, label %dec_label_pc_32cc8, label %dec_label_pc_32ce4

dec_label_pc_32cc8:                               ; preds = %dec_label_pc_32cb6
  %6 = mul i16 %data, %data
  %7 = sext i16 %6 to i32
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_32cf3

dec_label_pc_32ce4:                               ; preds = %dec_label_pc_32cb6
  call void @printLine(ptr @global_var_74ee0)
  br label %dec_label_pc_32cf3

dec_label_pc_32cf3:                               ; preds = %dec_label_pc_32ce4, %dec_label_pc_32cc8, %dec_label_pc_32ca5
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_32cf6:
  store i32 0, ptr @global_var_a9238, align 4
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

