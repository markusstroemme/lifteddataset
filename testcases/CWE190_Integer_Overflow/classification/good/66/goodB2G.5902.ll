@global_var_84510 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1ecd4:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-56)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_1ed2e, label %dec_label_pc_1ed29

dec_label_pc_1ed29:                               ; preds = %dec_label_pc_1ecd4
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ed2e

dec_label_pc_1ed2e:                               ; preds = %dec_label_pc_1ed29, %dec_label_pc_1ecd4
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_1edbf:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 9223372036854775807
  br i1 %4, label %dec_label_pc_1ee06, label %dec_label_pc_1edeb

dec_label_pc_1edeb:                               ; preds = %dec_label_pc_1edbf
  %5 = add i64 %3, 1
  call void @printLongLongLine(i64 %5)
  br label %dec_label_pc_1ee15

dec_label_pc_1ee06:                               ; preds = %dec_label_pc_1edbf
  call void @printLine(ptr @global_var_84510)
  br label %dec_label_pc_1ee15

dec_label_pc_1ee15:                               ; preds = %dec_label_pc_1ee06, %dec_label_pc_1edeb
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

