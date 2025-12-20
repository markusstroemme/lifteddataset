@global_var_8b298 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_8b28e = external constant [3 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_602d3:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8b28e)
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_60336, label %dec_label_pc_60331

dec_label_pc_60331:                               ; preds = %dec_label_pc_602d3
  call void @__stack_chk_fail()
  br label %dec_label_pc_60336

dec_label_pc_60336:                               ; preds = %dec_label_pc_60331, %dec_label_pc_602d3
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_6038f:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_603f7:
  %0 = icmp eq i32 %data, -1
  br i1 %0, label %dec_label_pc_60422, label %dec_label_pc_6040c

dec_label_pc_6040c:                               ; preds = %dec_label_pc_603f7
  %1 = add i32 %data, 1
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_60431

dec_label_pc_60422:                               ; preds = %dec_label_pc_603f7
  call void @printLine(ptr @global_var_8b298)
  br label %dec_label_pc_60431

dec_label_pc_60431:                               ; preds = %dec_label_pc_60422, %dec_label_pc_6040c
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

