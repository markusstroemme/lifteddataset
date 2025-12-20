@global_var_8b350 = external constant [54 x i8]
@global_var_8b386 = external constant [3 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_60978:
  %0 = call i32 @anon0(i32 0)
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_609b4, label %dec_label_pc_6099e

dec_label_pc_6099e:                               ; preds = %dec_label_pc_60978
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_609c3

dec_label_pc_609b4:                               ; preds = %dec_label_pc_60978
  call void @printLine(ptr @global_var_8b350)
  br label %dec_label_pc_609c3

dec_label_pc_609c3:                               ; preds = %dec_label_pc_609b4, %dec_label_pc_6099e
  ret void
}

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_60a32:
  %stack_var_-12 = alloca i32, align 4
  store i32 %data, ptr %stack_var_-12, align 4
  %0 = load ptr, ptr @global_var_bc0b0, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_8b386, ptr nonnull %stack_var_-12)
  %2 = load i32, ptr %stack_var_-12, align 4
  ret i32 %2
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

