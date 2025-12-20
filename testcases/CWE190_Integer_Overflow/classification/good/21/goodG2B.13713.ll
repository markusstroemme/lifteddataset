@goodG2BStatic = external local_unnamed_addr global i32
@global_var_7a994 = external constant [4 x i8]

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_3cadf:
  %0 = load i32, ptr @goodG2BStatic, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i16 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_3cb17, label %dec_label_pc_3cb02

dec_label_pc_3cb02:                               ; preds = %dec_label_pc_3cadf
  %3 = mul i16 %data, 2
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_3cb17

dec_label_pc_3cb17:                               ; preds = %dec_label_pc_3cb02, %dec_label_pc_3cadf
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_3cb1a:
  store i32 1, ptr @goodG2BStatic, align 4
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

