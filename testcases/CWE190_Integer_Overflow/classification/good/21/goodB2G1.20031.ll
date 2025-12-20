@global_var_8b9f8 = external constant [21 x i8]
@global_var_8ba10 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc484 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_63249:
  %0 = load i32, ptr @global_var_bc484, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_63273, label %dec_label_pc_63262

dec_label_pc_63262:                               ; preds = %dec_label_pc_63249
  call void @printLine(ptr @global_var_8b9f8)
  br label %dec_label_pc_6329e

dec_label_pc_63273:                               ; preds = %dec_label_pc_63249
  %2 = icmp eq i32 %data, -1
  br i1 %2, label %dec_label_pc_6328f, label %dec_label_pc_63279

dec_label_pc_63279:                               ; preds = %dec_label_pc_63273
  %3 = add i32 %data, 1
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_6329e

dec_label_pc_6328f:                               ; preds = %dec_label_pc_63273
  call void @printLine(ptr @global_var_8ba10)
  br label %dec_label_pc_6329e

dec_label_pc_6329e:                               ; preds = %dec_label_pc_6328f, %dec_label_pc_63279, %dec_label_pc_63262
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_632a1:
  store i32 0, ptr @global_var_bc484, align 4
  call void @anon0(i32 -1)
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

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

