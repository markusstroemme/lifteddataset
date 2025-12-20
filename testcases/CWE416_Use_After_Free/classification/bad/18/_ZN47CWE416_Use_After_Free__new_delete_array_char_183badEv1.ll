@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1bc69:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  %5 = icmp eq i64 %0, 0
  br i1 %5, label %dec_label_pc_1bcc0, label %dec_label_pc_1bcb4

dec_label_pc_1bcb4:                               ; preds = %dec_label_pc_1bc69
  call void @_ZdaPv(ptr %1, ptr inttoptr (i64 65 to ptr))
  br label %dec_label_pc_1bcc0

dec_label_pc_1bcc0:                               ; preds = %dec_label_pc_1bcb4, %dec_label_pc_1bc69
  %6 = inttoptr i64 %0 to ptr
  call void @printLine(ptr %6)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

