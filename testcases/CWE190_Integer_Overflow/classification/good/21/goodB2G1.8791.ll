@global_var_73bc8 = external constant [21 x i8]
@global_var_73be0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a91d8 = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2b0c9:
  %0 = load i32, ptr @global_var_a91d8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2b0f6, label %dec_label_pc_2b0e5

dec_label_pc_2b0e5:                               ; preds = %dec_label_pc_2b0c9
  call void @printLine(ptr @global_var_73bc8)
  br label %dec_label_pc_2b125

dec_label_pc_2b0f6:                               ; preds = %dec_label_pc_2b0c9
  %2 = icmp eq i16 %data, 32767
  br i1 %2, label %dec_label_pc_2b116, label %dec_label_pc_2b0fe

dec_label_pc_2b0fe:                               ; preds = %dec_label_pc_2b0f6
  %3 = add i16 %data, 1
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_2b125

dec_label_pc_2b116:                               ; preds = %dec_label_pc_2b0f6
  call void @printLine(ptr @global_var_73be0)
  br label %dec_label_pc_2b125

dec_label_pc_2b125:                               ; preds = %dec_label_pc_2b116, %dec_label_pc_2b0fe, %dec_label_pc_2b0e5
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2b128:
  store i32 0, ptr @global_var_a91d8, align 4
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

