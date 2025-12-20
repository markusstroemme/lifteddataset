@global_var_752e8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_3499f:
  call void @anon0(i64 32767)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_34a56:
  %0 = trunc i64 %myStruct to i16
  %1 = sub i16 0, %0
  %2 = icmp slt i16 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = select i1 %3, i16 %1, i16 %0
  %5 = icmp ult i16 %4, 182
  br i1 %5, label %dec_label_pc_34a80, label %dec_label_pc_34a9c

dec_label_pc_34a80:                               ; preds = %dec_label_pc_34a56
  %6 = urem i64 %myStruct, 65536
  %7 = mul nuw nsw i64 %6, %6
  %8 = trunc i64 %7 to i32
  %sext2 = mul i32 %8, 65536
  %9 = ashr exact i32 %sext2, 16
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_34aab

dec_label_pc_34a9c:                               ; preds = %dec_label_pc_34a56
  call void @printLine(ptr @global_var_752e8)
  br label %dec_label_pc_34aab

dec_label_pc_34aab:                               ; preds = %dec_label_pc_34a9c, %dec_label_pc_34a80
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

