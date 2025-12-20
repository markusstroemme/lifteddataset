@global_var_73d48 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define i16 @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2b9f4:
  ret i16 32767
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2ba0e:
  %0 = call i16 @anon0(i16 0)
  %1 = icmp eq i16 %0, 32767
  br i1 %1, label %dec_label_pc_2ba4f, label %dec_label_pc_2ba37

dec_label_pc_2ba37:                               ; preds = %dec_label_pc_2ba0e
  %2 = zext i16 %0 to i32
  %3 = mul i32 %2, 65536
  %sext = add i32 %3, 65536
  %4 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_2ba5e

dec_label_pc_2ba4f:                               ; preds = %dec_label_pc_2ba0e
  call void @printLine(ptr @global_var_73d48)
  br label %dec_label_pc_2ba5e

dec_label_pc_2ba5e:                               ; preds = %dec_label_pc_2ba4f, %dec_label_pc_2ba37
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

