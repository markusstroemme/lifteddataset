@global_var_8b258 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_8b24e = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_6013a:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8b24e)
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_6019d, label %dec_label_pc_60198

dec_label_pc_60198:                               ; preds = %dec_label_pc_6013a
  call void @__stack_chk_fail()
  br label %dec_label_pc_6019d

dec_label_pc_6019d:                               ; preds = %dec_label_pc_60198, %dec_label_pc_6013a
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_6020a:
  %0 = icmp eq i32 %data, -1
  br i1 %0, label %dec_label_pc_60235, label %dec_label_pc_6021f

dec_label_pc_6021f:                               ; preds = %dec_label_pc_6020a
  %1 = add i32 %data, 1
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_60244

dec_label_pc_60235:                               ; preds = %dec_label_pc_6020a
  call void @printLine(ptr @global_var_8b258)
  br label %dec_label_pc_60244

dec_label_pc_60244:                               ; preds = %dec_label_pc_60235, %dec_label_pc_6021f
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

