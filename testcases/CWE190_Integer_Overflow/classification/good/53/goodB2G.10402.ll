@global_var_747e0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_2fdcd:
  call void @anon0(i16 32767)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2fe52:
  call void @anon1(i16 %data)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_2feb2:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_2ff34:
  %0 = icmp slt i16 %data, 1
  br i1 %0, label %dec_label_pc_2ff7b, label %dec_label_pc_2ff4d

dec_label_pc_2ff4d:                               ; preds = %dec_label_pc_2ff34
  %1 = icmp sgt i16 %data, 16382
  br i1 %1, label %dec_label_pc_2ff6c, label %dec_label_pc_2ff55

dec_label_pc_2ff55:                               ; preds = %dec_label_pc_2ff4d
  %2 = mul i16 %data, 2
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_2ff7b

dec_label_pc_2ff6c:                               ; preds = %dec_label_pc_2ff4d
  call void @printLine(ptr @global_var_747e0)
  br label %dec_label_pc_2ff7b

dec_label_pc_2ff7b:                               ; preds = %dec_label_pc_2ff6c, %dec_label_pc_2ff55, %dec_label_pc_2ff34
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

