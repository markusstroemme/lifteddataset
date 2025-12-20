@global_var_6bf08 = external constant [21 x i8]
@global_var_6bf20 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c258 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_30845:
  %0 = load i32, ptr @global_var_9c258, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_3086f, label %dec_label_pc_3085e

dec_label_pc_3085e:                               ; preds = %dec_label_pc_30845
  call void @printLine(ptr @global_var_6bf08)
  br label %dec_label_pc_308a1

dec_label_pc_3086f:                               ; preds = %dec_label_pc_30845
  %2 = icmp eq i32 %data, 0
  br i1 %2, label %dec_label_pc_308a1, label %dec_label_pc_30875

dec_label_pc_30875:                               ; preds = %dec_label_pc_3086f
  %3 = icmp ult i32 %data, 2147483647
  br i1 %3, label %dec_label_pc_3087e, label %dec_label_pc_30892

dec_label_pc_3087e:                               ; preds = %dec_label_pc_30875
  %4 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_308a1

dec_label_pc_30892:                               ; preds = %dec_label_pc_30875
  call void @printLine(ptr @global_var_6bf20)
  br label %dec_label_pc_308a1

dec_label_pc_308a1:                               ; preds = %dec_label_pc_30892, %dec_label_pc_3087e, %dec_label_pc_3086f, %dec_label_pc_3085e
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_308a4:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  store i32 0, ptr @global_var_9c258, align 4
  call void @anon0(i32 %storemerge.in)
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

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

