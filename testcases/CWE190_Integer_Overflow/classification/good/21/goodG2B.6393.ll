@global_var_7a994 = external constant [4 x i8]
@global_var_a9180 = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_218cf:
  %0 = load i32, ptr @global_var_a9180, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i16 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_21907, label %dec_label_pc_218f2

dec_label_pc_218f2:                               ; preds = %dec_label_pc_218cf
  %3 = mul i16 %data, 2
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_21907

dec_label_pc_21907:                               ; preds = %dec_label_pc_218f2, %dec_label_pc_218cf
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2190a:
  store i32 1, ptr @global_var_a9180, align 4
  call void @anon0(i16 2)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

