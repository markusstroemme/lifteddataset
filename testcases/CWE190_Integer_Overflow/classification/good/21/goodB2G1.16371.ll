@global_var_89ca8 = external constant [21 x i8]
@global_var_89cc0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc3e8 = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_550c0:
  %0 = load i32, ptr @global_var_bc3e8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_550ed, label %dec_label_pc_550dc

dec_label_pc_550dc:                               ; preds = %dec_label_pc_550c0
  call void @printLine(ptr @global_var_89ca8)
  br label %dec_label_pc_55124

dec_label_pc_550ed:                               ; preds = %dec_label_pc_550c0
  %2 = icmp eq i16 %data, 32767
  br i1 %2, label %dec_label_pc_55115, label %dec_label_pc_550f5

dec_label_pc_550f5:                               ; preds = %dec_label_pc_550ed
  %3 = add i16 %data, 1
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_55124

dec_label_pc_55115:                               ; preds = %dec_label_pc_550ed
  call void @printLine(ptr @global_var_89cc0)
  br label %dec_label_pc_55124

dec_label_pc_55124:                               ; preds = %dec_label_pc_55115, %dec_label_pc_550f5, %dec_label_pc_550dc
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_55127:
  store i32 0, ptr @global_var_bc3e8, align 4
  call void @anon0(i16 32767)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

