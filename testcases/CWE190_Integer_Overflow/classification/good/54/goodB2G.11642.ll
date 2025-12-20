@global_var_75198 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_33ef4:
  call void @anon0(i16 32767)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_33f79:
  call void @anon1(i16 %data)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_33fd9:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_34039:
  call void @anon3(i16 %data)
  ret void
}

define void @anon3(i16 %data) local_unnamed_addr {
dec_label_pc_340b7:
  %0 = sub i16 0, %data
  %1 = icmp slt i16 %0, 0
  %2 = icmp eq i1 %1, false
  %.v = select i1 %2, i16 %0, i16 %data
  %3 = icmp ult i16 %.v, 182
  br i1 %3, label %dec_label_pc_340db, label %dec_label_pc_340f7

dec_label_pc_340db:                               ; preds = %dec_label_pc_340b7
  %4 = mul i16 %data, %data
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_34106

dec_label_pc_340f7:                               ; preds = %dec_label_pc_340b7
  call void @printLine(ptr @global_var_75198)
  br label %dec_label_pc_34106

dec_label_pc_34106:                               ; preds = %dec_label_pc_340f7, %dec_label_pc_340db
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

