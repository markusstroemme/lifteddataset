@global_var_74560 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a920c = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2ee36:
  %0 = load i32, ptr @global_var_a920c, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i16 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_2ee87, label %dec_label_pc_2ee59

dec_label_pc_2ee59:                               ; preds = %dec_label_pc_2ee36
  %3 = icmp sgt i16 %data, 16382
  br i1 %3, label %dec_label_pc_2ee78, label %dec_label_pc_2ee61

dec_label_pc_2ee61:                               ; preds = %dec_label_pc_2ee59
  %4 = mul i16 %data, 2
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_2ee87

dec_label_pc_2ee78:                               ; preds = %dec_label_pc_2ee59
  call void @printLine(ptr @global_var_74560)
  br label %dec_label_pc_2ee87

dec_label_pc_2ee87:                               ; preds = %dec_label_pc_2ee78, %dec_label_pc_2ee61, %dec_label_pc_2ee36
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2ee8a:
  store i32 1, ptr @global_var_a920c, align 4
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

