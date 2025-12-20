@global_var_73e60 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_2c029:
  call void @anon0(i16 32767)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2c0ae:
  call void @anon1(i16 %data)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_2c10e:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_2c184:
  %0 = icmp eq i16 %data, 32767
  br i1 %0, label %dec_label_pc_2c1b6, label %dec_label_pc_2c19e

dec_label_pc_2c19e:                               ; preds = %dec_label_pc_2c184
  %1 = add i16 %data, 1
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_2c1c5

dec_label_pc_2c1b6:                               ; preds = %dec_label_pc_2c184
  call void @printLine(ptr @global_var_73e60)
  br label %dec_label_pc_2c1c5

dec_label_pc_2c1c5:                               ; preds = %dec_label_pc_2c1b6, %dec_label_pc_2c19e
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

