@global_var_7a994 = external constant [4 x i8]
@global_var_a9114 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_17344:
  %0 = load i32, ptr @global_var_a9114, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_17370, label %dec_label_pc_1735d

dec_label_pc_1735d:                               ; preds = %dec_label_pc_17344
  %2 = mul i32 %data, %data
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_17370

dec_label_pc_17370:                               ; preds = %dec_label_pc_1735d, %dec_label_pc_17344
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_17373:
  store i32 1, ptr @global_var_a9114, align 4
  call void @anon0(i32 2)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

