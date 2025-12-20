@global_var_695c0 = external constant [21 x i8]
@global_var_695d8 = external constant [54 x i8]
@global_var_9c034 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1e242:
  %0 = load i32, ptr @global_var_9c034, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_1e29e, label %dec_label_pc_1e272

dec_label_pc_1e272:                               ; preds = %dec_label_pc_1e242
  call void @printLine(ptr @global_var_695c0)
  br label %dec_label_pc_1e2ad

dec_label_pc_1e29e:                               ; preds = %dec_label_pc_1e242
  call void @printLine(ptr @global_var_695d8)
  br label %dec_label_pc_1e2ad

dec_label_pc_1e2ad:                               ; preds = %dec_label_pc_1e29e, %dec_label_pc_1e272
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

